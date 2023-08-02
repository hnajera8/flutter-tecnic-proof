// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  Status get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListStateCopyWith<ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
  @useResult
  $Res call({Status status, List<Product> products});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProducListStateCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$$_ProducListStateCopyWith(
          _$_ProducListState value, $Res Function(_$_ProducListState) then) =
      __$$_ProducListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Product> products});
}

/// @nodoc
class __$$_ProducListStateCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$_ProducListState>
    implements _$$_ProducListStateCopyWith<$Res> {
  __$$_ProducListStateCopyWithImpl(
      _$_ProducListState _value, $Res Function(_$_ProducListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
  }) {
    return _then(_$_ProducListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProducListState implements _ProducListState {
  const _$_ProducListState(
      {this.status = Status.initial, final List<Product> products = const []})
      : _products = products;

  @override
  @JsonKey()
  final Status status;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductListState(status: $status, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProducListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProducListStateCopyWith<_$_ProducListState> get copyWith =>
      __$$_ProducListStateCopyWithImpl<_$_ProducListState>(this, _$identity);
}

abstract class _ProducListState implements ProductListState {
  const factory _ProducListState(
      {final Status status, final List<Product> products}) = _$_ProducListState;

  @override
  Status get status;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProducListStateCopyWith<_$_ProducListState> get copyWith =>
      throw _privateConstructorUsedError;
}
