// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsRequestDTO _$$_ProductsRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProductsRequestDTO(
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$$_ProductsRequestDTOToJson(
        _$_ProductsRequestDTO instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

_$_ProductsResponseDTO _$$_ProductsResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProductsResponseDTO(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductsResponseDTOToJson(
        _$_ProductsResponseDTO instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
