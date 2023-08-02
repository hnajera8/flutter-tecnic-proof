import 'package:flutter_tecnic_proof/features/product_list/domain/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_dto.freezed.dart';
part 'products_dto.g.dart';

@freezed
class ProductsRequestDTO with _$ProductsRequestDTO {
  const ProductsRequestDTO._();

  const factory ProductsRequestDTO({
    required int page,
    required int size,
  }) = _ProductsRequestDTO;

  factory ProductsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductsRequestDTOFromJson(json);
}

@freezed
class ProductsResponseDTO with _$ProductsResponseDTO {
  const factory ProductsResponseDTO({
    @Default([]) List<Product> products,
  }) = _ProductsResponseDTO;

  factory ProductsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseDTOFromJson(json);
}