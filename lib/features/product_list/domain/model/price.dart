import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.g.dart';
part 'price.freezed.dart';

@freezed
class Price with _$Price {
  const factory Price({
    @Default(0) int convergenceId,
    @Default(0) double price,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}
