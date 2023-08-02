import 'package:flutter_tecnic_proof/features/product_list/domain/model/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

enum ProductTypes {
  none,
  FIBERVODAFONE,
  PHONELINE,
  SWITCHBOARD,
}

@freezed
class Product with _$Product {
  const factory Product({
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String description,
    required int id,
    required String name,
    @Default('') String displayName,
    @Default(ProductTypes.none) ProductTypes type,
    @Default(0) int fiberUploadMegas,
    @Default(0) int fiberDownloadMegas,
    @Default([]) List<Price> prices,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
