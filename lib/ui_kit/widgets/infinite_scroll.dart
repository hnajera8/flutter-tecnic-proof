import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

export 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart'
    show PagingController;

class CustomInfiniteScroll<T> extends StatefulWidget {
  const CustomInfiniteScroll({
    required this.itemBuilder,
    required this.fetchNextPage,
    required this.pageSize,
    this.errorMessageWidget = const SizedBox(),
    super.key,
  });
  final Widget Function(BuildContext, T, int) itemBuilder;
  final Future<List<T>?> Function(int) fetchNextPage;
  final int pageSize;
  final Widget errorMessageWidget;

  @override
  State createState() => _CustomInfiniteScrollState<T>();

  static int initialPage = 1;
}

class _CustomInfiniteScrollState<T> extends State<CustomInfiniteScroll<T>> {
  late PagingController<int, T> _pagingController;
  int i = -1;
  @override
  void initState() {
    _pagingController = PagingController(
      firstPageKey: CustomInfiniteScroll.initialPage,
    );

    _pagingController.addPageRequestListener((pageKey) async {
      try {
        final more = await widget.fetchNextPage(pageKey);
        if (more == null) {
          throw Exception('');
        }
        pageKey = pageKey + 1;
        if (more.length < widget.pageSize) {
          _pagingController.appendLastPage(more);
        } else {
          _pagingController.appendPage(more, pageKey);
        }
      } catch (e) {
        _pagingController.error;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        notificationPredicate: (_) => true,
        onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
        ),
        child: NotificationListener<ScrollNotification>(
          child: PagedListView<int, T>(
            shrinkWrap: true,
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<T>(
              itemBuilder: (context, T item, index) {
                return widget.itemBuilder(context, item, index);
              },
              noItemsFoundIndicatorBuilder: (context) =>
                  widget.errorMessageWidget,
              firstPageProgressIndicatorBuilder: (context) {
                return const CircularProgressIndicator();
              },
              newPageProgressIndicatorBuilder: (context) =>
                  const CircularProgressIndicator(),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
