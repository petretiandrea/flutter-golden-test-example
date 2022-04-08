// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartLoaded call(Cart cart) {
    return _CartLoaded(
      cart,
    );
  }

  _CartLoading loading() {
    return const _CartLoading();
  }

  _CartError error(String? error) {
    return _CartError(
      error,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Cart cart) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartLoaded value) $default, {
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$CartLoadedCopyWith<$Res> {
  factory _$CartLoadedCopyWith(
          _CartLoaded value, $Res Function(_CartLoaded) then) =
      __$CartLoadedCopyWithImpl<$Res>;
  $Res call({Cart cart});
}

/// @nodoc
class __$CartLoadedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartLoadedCopyWith<$Res> {
  __$CartLoadedCopyWithImpl(
      _CartLoaded _value, $Res Function(_CartLoaded) _then)
      : super(_value, (v) => _then(v as _CartLoaded));

  @override
  _CartLoaded get _value => super._value as _CartLoaded;

  @override
  $Res call({
    Object? cart = freezed,
  }) {
    return _then(_CartLoaded(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$_CartLoaded implements _CartLoaded {
  const _$_CartLoaded(this.cart);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartLoaded &&
            const DeepCollectionEquality().equals(other.cart, cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cart));

  @JsonKey(ignore: true)
  @override
  _$CartLoadedCopyWith<_CartLoaded> get copyWith =>
      __$CartLoadedCopyWithImpl<_CartLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Cart cart) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) {
    return $default?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartLoaded value) $default, {
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CartLoaded implements CartState {
  const factory _CartLoaded(Cart cart) = _$_CartLoaded;

  Cart get cart;
  @JsonKey(ignore: true)
  _$CartLoadedCopyWith<_CartLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CartLoadingCopyWith<$Res> {
  factory _$CartLoadingCopyWith(
          _CartLoading value, $Res Function(_CartLoading) then) =
      __$CartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartLoadingCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartLoadingCopyWith<$Res> {
  __$CartLoadingCopyWithImpl(
      _CartLoading _value, $Res Function(_CartLoading) _then)
      : super(_value, (v) => _then(v as _CartLoading));

  @override
  _CartLoading get _value => super._value as _CartLoading;
}

/// @nodoc

class _$_CartLoading implements _CartLoading {
  const _$_CartLoading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Cart cart) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartLoaded value) $default, {
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoading implements CartState {
  const factory _CartLoading() = _$_CartLoading;
}

/// @nodoc
abstract class _$CartErrorCopyWith<$Res> {
  factory _$CartErrorCopyWith(
          _CartError value, $Res Function(_CartError) then) =
      __$CartErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$CartErrorCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartErrorCopyWith<$Res> {
  __$CartErrorCopyWithImpl(_CartError _value, $Res Function(_CartError) _then)
      : super(_value, (v) => _then(v as _CartError));

  @override
  _CartError get _value => super._value as _CartError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_CartError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CartError implements _CartError {
  const _$_CartError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'CartState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$CartErrorCopyWith<_CartError> get copyWith =>
      __$CartErrorCopyWithImpl<_CartError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Cart cart) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Cart cart)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartLoaded value) $default, {
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartLoaded value)? $default, {
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CartError implements CartState {
  const factory _CartError(String? error) = _$_CartError;

  String? get error;
  @JsonKey(ignore: true)
  _$CartErrorCopyWith<_CartError> get copyWith =>
      throw _privateConstructorUsedError;
}
