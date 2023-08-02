import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tecnic_proof/core/constants.dart';
import 'package:flutter_tecnic_proof/features/product_list/domain/model/product.dart';
import 'package:flutter_tecnic_proof/features/product_list/presentation/cubit/product_list_cubit.dart';
import 'package:flutter_tecnic_proof/features/product_list/presentation/cubit/product_list_state.dart';
import 'package:flutter_tecnic_proof/ui_kit/widgets/app_bar.dart';
import 'package:flutter_tecnic_proof/ui_kit/widgets/infinite_scroll.dart';
import 'package:flutter_tecnic_proof/ui_kit/widgets/no_products.dart';
import 'package:flutter_tecnic_proof/ui_kit/widgets/product_card.dart';
import 'package:flutter_tecnic_proof/utils/utils.dart';
import 'package:flutter_tecnic_proof/utils/status.dart';
import 'package:get_it/get_it.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductListCubit>(
      create: (context) => GetIt.I<ProductListCubit>()..init(),
      child: const Scaffold(
        appBar: CustomAppBar(
          title: 'Listado de productos',
        ),
        body: _ProductListBody(),
      ),
    );
  }
}

class _ProductListBody extends StatelessWidget {
  const _ProductListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductListCubit, ProductListState>(
      listener: (context, state) {
        if (state.status.isError) {
          showErrorSnackbar(
            context,
            'Se ha producido un error al cargar los productos',
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: state.status.isLoading
              ? Text('Loading...')
              : const _ProductsList(),
        );
      },
    );
  }
}

class _ProductsList extends StatelessWidget {
  const _ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductListCubit, ProductListState>(
      builder: (context, state) {
        return CustomInfiniteScroll<Product>(
          fetchNextPage: (index) =>
              context.read<ProductListCubit>().loadProductsPagination(index),
          errorMessageWidget: const NoProductsMessage(),
          pageSize: Constants.productsSize,
          itemBuilder: (_, Product product, int page) => ProductCard(
            model: ProductCardModel(
              name: product.displayName,
              type: product.type.name,
              price: formatPrice(product.prices.first.price),
            ),
          ),
        );
      },
    );
  }
}
