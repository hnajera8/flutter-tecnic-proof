import 'package:flutter_tecnic_proof/core/image_paths.dart';
import 'package:flutter_tecnic_proof/features/product_list/domain/model/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

enum ProductTypes {
  none,
  FIBERVODAFONE,
  PHONELINE,
  SWITCHBOARD;

  String? getImage() {
    switch (this) {
      case ProductTypes.FIBERVODAFONE:
        return ImgPaths.fiber;
      case ProductTypes.PHONELINE:
        return ImgPaths.phoneline;
      default:
        return null;
    }
  }

  @override
  String toString() {
    switch (this) {
      case ProductTypes.FIBERVODAFONE:
        return 'Fibra';
      case ProductTypes.PHONELINE:
        return 'Móvil';
      case ProductTypes.SWITCHBOARD:
        return 'Tablero de conmutadores';
      default:
        return '';
    }
  }
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
    @Default(0) double fiberUploadMegas,
    @Default(0) double fiberDownloadMegas,
    @Default(0) double phonelineMegas,
    @Default(0) double phonelineMinutes,
    @Default(0) double phonelineSms,
    @Default([]) List<Price> prices,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
