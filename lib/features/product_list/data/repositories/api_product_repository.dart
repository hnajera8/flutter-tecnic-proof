import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_tecnic_proof/core/base_exception.dart';
import 'package:flutter_tecnic_proof/core/constants.dart';
import 'package:flutter_tecnic_proof/core/http_service.dart';
import 'package:flutter_tecnic_proof/features/product_list/data/dtos/products_dto.dart';
import 'package:flutter_tecnic_proof/features/product_list/domain/repositories/product_repository.dart';

class ApiProductRepository extends ProductRepository {
  ApiProductRepository({
    required this.httpServer,
  });
  final HttpService httpServer;

  @override
  Future<Either<BaseException, ProductsResponseDTO>> getProducts({
    required ProductsRequestDTO request,
  }) async {
    try {
      final resp = await httpServer.get(
        endpoint:
            '${Constants.productsEndpoint}?page=${request.page}&size=${request.size}',
      );
      final products = json.decode(resp.toString())['_embedded'];
      ProductsResponseDTO responseDTO = ProductsResponseDTO.fromJson(products);
      return Right(responseDTO);
    } on BaseException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknowException());
    }
  }
}
