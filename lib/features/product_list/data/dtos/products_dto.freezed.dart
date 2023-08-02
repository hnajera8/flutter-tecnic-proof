// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsRequestDTO _$ProductsRequestDTOFromJson(Map<String, dynamic> json) {
  return _ProductsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsRequestDTO {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsRequestDTOCopyWith<ProductsRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsRequestDTOCopyWith<$Res> {
  factory $ProductsRequestDTOCopyWith(
          ProductsRequestDTO value, $Res Function(ProductsRequestDTO) then) =
      _$ProductsRequestDTOCopyWithImpl<$Res, ProductsRequestDTO>;
  @useResult
  $Res call({int page, int size});
}

/// @nodoc
class _$ProductsRequestDTOCopyWithImpl<$Res, $Val extends ProductsRequestDTO>
    implements $ProductsRequestDTOCopyWith<$Res> {
  _$ProductsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsRequestDTOCopyWith<$Res>
    implements $ProductsRequestDTOCopyWith<$Res> {
  factory _$$_ProductsRequestDTOCopyWith(_$_ProductsRequestDTO value,
          $Res Function(_$_ProductsRequestDTO) then) =
      __$$_ProductsRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int size});
}

/// @nodoc
class __$$_ProductsRequestDTOCopyWithImpl<$Res>
    extends _$ProductsRequestDTOCopyWithImpl<$Res, _$_ProductsRequestDTO>
    implements _$$_ProductsRequestDTOCopyWith<$Res> {
  __$$_ProductsRequestDTOCopyWithImpl(
      _$_ProductsRequestDTO _value, $Res Function(_$_ProductsRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_$_ProductsRequestDTO(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsRequestDTO extends _ProductsRequestDTO {
  const _$_ProductsRequestDTO({required this.page, required this.size})
      : super._();

  factory _$_ProductsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsRequestDTOFromJson(json);

  @override
  final int page;
  @override
  final int size;

  @override
  String toString() {
    return 'ProductsRequestDTO(page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsRequestDTO &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsRequestDTOCopyWith<_$_ProductsRequestDTO> get copyWith =>
      __$$_ProductsRequestDTOCopyWithImpl<_$_ProductsRequestDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsRequestDTOToJson(
      this,
    );
  }
}

abstract class _ProductsRequestDTO extends ProductsRequestDTO {
  const factory _ProductsRequestDTO(
      {required final int page,
      required final int size}) = _$_ProductsRequestDTO;
  const _ProductsRequestDTO._() : super._();

  factory _ProductsRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductsRequestDTO.fromJson;

  @override
  int get page;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsRequestDTOCopyWith<_$_ProductsRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsResponseDTO _$ProductsResponseDTOFromJson(Map<String, dynamic> json) {
  return _ProductsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponseDTO {
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsResponseDTOCopyWith<ProductsResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseDTOCopyWith<$Res> {
  factory $ProductsResponseDTOCopyWith(
          ProductsResponseDTO value, $Res Function(ProductsResponseDTO) then) =
      _$ProductsResponseDTOCopyWithImpl<$Res, ProductsResponseDTO>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsResponseDTOCopyWithImpl<$Res, $Val extends ProductsResponseDTO>
    implements $ProductsResponseDTOCopyWith<$Res> {
  _$ProductsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsResponseDTOCopyWith<$Res>
    implements $ProductsResponseDTOCopyWith<$Res> {
  factory _$$_ProductsResponseDTOCopyWith(_$_ProductsResponseDTO value,
          $Res Function(_$_ProductsResponseDTO) then) =
      __$$_ProductsResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$_ProductsResponseDTOCopyWithImpl<$Res>
    extends _$ProductsResponseDTOCopyWithImpl<$Res, _$_ProductsResponseDTO>
    implements _$$_ProductsResponseDTOCopyWith<$Res> {
  __$$_ProductsResponseDTOCopyWithImpl(_$_ProductsResponseDTO _value,
      $Res Function(_$_ProductsResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_ProductsResponseDTO(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsResponseDTO implements _ProductsResponseDTO {
  const _$_ProductsResponseDTO({final List<Product> products = const []})
      : _products = products;

  factory _$_ProductsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsResponseDTOFromJson(json);

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
    return 'ProductsResponseDTO(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsResponseDTO &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsResponseDTOCopyWith<_$_ProductsResponseDTO> get copyWith =>
      __$$_ProductsResponseDTOCopyWithImpl<_$_ProductsResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsResponseDTOToJson(
      this,
    );
  }
}

abstract class _ProductsResponseDTO implements ProductsResponseDTO {
  const factory _ProductsResponseDTO({final List<Product> products}) =
      _$_ProductsResponseDTO;

  factory _ProductsResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductsResponseDTO.fromJson;

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsResponseDTOCopyWith<_$_ProductsResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
