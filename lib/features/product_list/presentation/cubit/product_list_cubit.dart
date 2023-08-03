import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tecnic_proof/core/constants.dart';
import 'package:flutter_tecnic_proof/features/product_list/data/dtos/products_dto.dart';
import 'package:flutter_tecnic_proof/features/product_list/data/repositories/api_product_repository.dart';
import 'package:flutter_tecnic_proof/features/product_list/domain/model/product.dart';
import 'package:flutter_tecnic_proof/utils/status.dart';

import 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  ProductListCubit({
    required this.repository,
  }) : super(
          const ProductListState(),
        );
  final ApiProductRepository repository;

  void init() async {
    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );
    final either = await repository.getProducts(
      request: const ProductsRequestDTO(
        page: Constants.productsInitialPage,
        size: Constants.productsSize,
      ),
    );
    either.fold(
      (l) => emit(
        state.copyWith(
          status: Status.error,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: Status.success,
          products: r.products,
        ),
      ),
    );
  }

  Future<List<Product>> loadProductsPagination(int page) async {
    final either = await repository.getProducts(
      request: ProductsRequestDTO(
        page: page,
        size: Constants.productsSize,
      ),
    );
    return either.fold(
      (l) {
        emit(
          state.copyWith(
            status: Status.error,
          ),
        );
        return [];
      },
      (r) => r.products,
    );
  }
}
