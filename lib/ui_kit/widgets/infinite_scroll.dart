import 'package:flutter/material.dart';
import 'package:flutter_tecnic_proof/utils/scroll_pagination_utils.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

export 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart'
    show PagingController;

class CustomInfiniteScroll<T> extends StatefulWidget {
  const CustomInfiniteScroll({
    required this.itemBuilder,
    required this.fetchNextPage,
    required this.pageSize,
    this.list,
    this.errorMessageWidget = const SizedBox(),
    this.disabled = false,
    this.scrollDirection = Axis.vertical,
    this.physics,
    this.showProgressIndicator = true,
    this.childrenProgressIndicator,
    this.controller,
    this.reverse = false,
    this.onDispose,
    this.enableRefreshIndicator = true,
    this.scrollController,
    this.sticky = false,
    this.autoscrollDuration,
    this.autoscrollOffset,
    super.key,
  });
  final bool enableRefreshIndicator;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final Future<List<T>?> Function(int) fetchNextPage;
  final int pageSize;
  final List<T>? list;
  final Widget errorMessageWidget;
  final bool disabled;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final bool showProgressIndicator;
  final List<Widget>? childrenProgressIndicator;
  final PagingController<int, T>? controller;
  final VoidCallback? onDispose;
  final ScrollController? scrollController;
  final bool reverse;
  final bool sticky;
  final int? autoscrollDuration;
  final double? autoscrollOffset;

  @override
  State createState() => _CustomInfiniteScrollState<T>();

  static int initialPage = 1;
}

class _CustomInfiniteScrollState<T> extends State<CustomInfiniteScroll<T>> {
  late PagingController<int, T> _pagingController;
  int i = -1;
  @override
  void initState() {
    _pagingController = widget.controller ??
        PagingController(
          firstPageKey: CustomInfiniteScroll.initialPage,
        );

    if (!widget.disabled) {
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
    } else {
      _pagingController.addPageRequestListener((pageKey) async {
        try {
          final more = await widget.fetchNextPage(pageKey);
          if (more == null) {
            throw Exception('');
          }
          pageKey = pageKey + widget.pageSize;
          _pagingController.appendLastPage(more);
        } catch (e) {
          _pagingController.error;
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        notificationPredicate:
            widget.enableRefreshIndicator ? (_) => true : (_) => false,
        onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
        ),
        child: NotificationListener<ScrollNotification>(
          onNotification: widget.sticky && widget.scrollController != null
              ? (scrollNotification) {
                  if (scrollNotification is ScrollEndNotification) {
                    int page = ScrollPaginationUtils.getCurrentPage(
                      widget.scrollController!.offset,
                      context,
                    );
                    double offset = ScrollPaginationUtils.getPageOffset(
                      page,
                      context,
                      widget.autoscrollOffset ??
                          MediaQuery.of(context).size.width,
                    );

                    Future.delayed(Duration.zero, () {
                      if (widget.scrollController!.hasClients) {
                        widget.scrollController!.animateTo(
                          offset,
                          duration: Duration(
                            milliseconds: widget.autoscrollDuration ?? 200,
                          ),
                          curve: Curves.ease,
                        );
                      }
                    });
                  }
                  return true;
                }
              : null,
          child: PagedListView<int, T>(
            scrollController: widget.scrollController,
            shrinkWrap: true,
            pagingController: _pagingController,
            scrollDirection: widget.scrollDirection,
            physics: widget.physics,
            reverse: widget.reverse,
            builderDelegate: PagedChildBuilderDelegate<T>(
              itemBuilder: (context, T item, index) {
                return widget.itemBuilder(context, item, index);
              },
              noItemsFoundIndicatorBuilder: (context) =>
                  widget.list != null && widget.list!.isNotEmpty
                      ? Column(
                          children: widget.list!.map((r) {
                            i++;
                            return widget.itemBuilder(context, r, i);
                          }).toList(),
                        )
                      : widget.errorMessageWidget,
              firstPageProgressIndicatorBuilder: (context) {
                if (widget.list != null) {
                  if (widget.scrollDirection == Axis.vertical) {
                    return Column(
                      children: widget.list!.map((r) {
                        i++;
                        return widget.itemBuilder(context, r, i);
                      }).toList(),
                    );
                  }
                  return Row(
                    children: widget.list!.map((r) {
                      i++;
                      return widget.itemBuilder(context, r, i);
                    }).toList(),
                  );
                } else if (widget.showProgressIndicator) {
                  return widget.childrenProgressIndicator != null
                      ? widget.scrollDirection == Axis.vertical
                          ? SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              child: Column(
                                children: widget.childrenProgressIndicator!,
                              ),
                            )
                          : Row(
                              children: widget.childrenProgressIndicator!,
                            )
                      : const CircularProgressIndicator();
                }
                return const SizedBox.shrink();
              },
              newPageProgressIndicatorBuilder: (context) =>
                  widget.showProgressIndicator
                      ? const CircularProgressIndicator()
                      : const SizedBox.shrink(),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    if (widget.controller == null) _pagingController.dispose();
    widget.onDispose?.call();
    super.dispose();
  }
}
