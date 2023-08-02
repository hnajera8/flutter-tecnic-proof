import 'package:dartz/dartz.dart';
import 'package:flutter_tecnic_proof/core/base_exception.dart';
import 'package:flutter_tecnic_proof/features/product_list/data/dtos/products_dto.dart';

abstract class ProductRepository {
  Future<Either<BaseException, ProductsResponseDTO>> getProducts({
    required ProductsRequestDTO request,
  });
}
