// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      description: json['description'] as String? ?? '',
      id: json['id'] as int,
      name: json['name'] as String,
      displayName: json['displayName'] as String? ?? '',
      type: $enumDecodeNullable(_$ProductTypesEnumMap, json['type']) ??
          ProductTypes.none,
      fiberUploadMegas: (json['fiberUploadMegas'] as num?)?.toDouble() ?? 0,
      fiberDownloadMegas: (json['fiberDownloadMegas'] as num?)?.toDouble() ?? 0,
      phonelineMegas: (json['phonelineMegas'] as num?)?.toDouble() ?? 0,
      phonelineMinutes: (json['phonelineMinutes'] as num?)?.toDouble() ?? 0,
      phonelineSms: (json['phonelineSms'] as num?)?.toDouble() ?? 0,
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
      'type': _$ProductTypesEnumMap[instance.type]!,
      'fiberUploadMegas': instance.fiberUploadMegas,
      'fiberDownloadMegas': instance.fiberDownloadMegas,
      'phonelineMegas': instance.phonelineMegas,
      'phonelineMinutes': instance.phonelineMinutes,
      'phonelineSms': instance.phonelineSms,
      'prices': instance.prices,
    };

const _$ProductTypesEnumMap = {
  ProductTypes.none: 'none',
  ProductTypes.FIBERVODAFONE: 'FIBERVODAFONE',
  ProductTypes.PHONELINE: 'PHONELINE',
  ProductTypes.SWITCHBOARD: 'SWITCHBOARD',
};
