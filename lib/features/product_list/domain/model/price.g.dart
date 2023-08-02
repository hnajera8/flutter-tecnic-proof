// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      convergenceId: json['convergenceId'] as int? ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'convergenceId': instance.convergenceId,
      'price': instance.price,
    };
