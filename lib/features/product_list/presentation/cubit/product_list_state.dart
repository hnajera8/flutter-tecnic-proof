import 'package:flutter_tecnic_proof/features/product_list/domain/model/product.dart';
import 'package:flutter_tecnic_proof/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_list_state.freezed.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState({
    @Default(Status.initial) Status status,
    @Default([]) List<Product> products,
  }) = _ProducListState;
}
