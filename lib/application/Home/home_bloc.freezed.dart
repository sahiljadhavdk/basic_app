// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAdd,
    required TResult Function() onSubtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAdd,
    TResult? Function()? onSubtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAdd,
    TResult Function()? onSubtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnSubtract value) onSubtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnSubtract value)? onSubtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnSubtract value)? onSubtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnAddCopyWith<$Res> {
  factory _$$_OnAddCopyWith(_$_OnAdd value, $Res Function(_$_OnAdd) then) =
      __$$_OnAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnAddCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_OnAdd>
    implements _$$_OnAddCopyWith<$Res> {
  __$$_OnAddCopyWithImpl(_$_OnAdd _value, $Res Function(_$_OnAdd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnAdd implements _OnAdd {
  const _$_OnAdd();

  @override
  String toString() {
    return 'HomeEvent.onAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAdd,
    required TResult Function() onSubtract,
  }) {
    return onAdd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAdd,
    TResult? Function()? onSubtract,
  }) {
    return onAdd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAdd,
    TResult Function()? onSubtract,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnSubtract value) onSubtract,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnSubtract value)? onSubtract,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnSubtract value)? onSubtract,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements HomeEvent {
  const factory _OnAdd() = _$_OnAdd;
}

/// @nodoc
abstract class _$$_OnSubtractCopyWith<$Res> {
  factory _$$_OnSubtractCopyWith(
          _$_OnSubtract value, $Res Function(_$_OnSubtract) then) =
      __$$_OnSubtractCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSubtractCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_OnSubtract>
    implements _$$_OnSubtractCopyWith<$Res> {
  __$$_OnSubtractCopyWithImpl(
      _$_OnSubtract _value, $Res Function(_$_OnSubtract) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnSubtract implements _OnSubtract {
  const _$_OnSubtract();

  @override
  String toString() {
    return 'HomeEvent.onSubtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnSubtract);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAdd,
    required TResult Function() onSubtract,
  }) {
    return onSubtract();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAdd,
    TResult? Function()? onSubtract,
  }) {
    return onSubtract?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAdd,
    TResult Function()? onSubtract,
    required TResult orElse(),
  }) {
    if (onSubtract != null) {
      return onSubtract();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnSubtract value) onSubtract,
  }) {
    return onSubtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnSubtract value)? onSubtract,
  }) {
    return onSubtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnSubtract value)? onSubtract,
    required TResult orElse(),
  }) {
    if (onSubtract != null) {
      return onSubtract(this);
    }
    return orElse();
  }
}

abstract class _OnSubtract implements HomeEvent {
  const factory _OnSubtract() = _$_OnSubtract;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  TextEditingController get firstNumberController =>
      throw _privateConstructorUsedError;
  TextEditingController get secondNumberController =>
      throw _privateConstructorUsedError;
  TextEditingController get ansController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccessful,
      TextEditingController firstNumberController,
      TextEditingController secondNumberController,
      TextEditingController ansController});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccessful = null,
    Object? firstNumberController = null,
    Object? secondNumberController = null,
    Object? ansController = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNumberController: null == firstNumberController
          ? _value.firstNumberController
          : firstNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      secondNumberController: null == secondNumberController
          ? _value.secondNumberController
          : secondNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      ansController: null == ansController
          ? _value.ansController
          : ansController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccessful,
      TextEditingController firstNumberController,
      TextEditingController secondNumberController,
      TextEditingController ansController});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccessful = null,
    Object? firstNumberController = null,
    Object? secondNumberController = null,
    Object? ansController = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNumberController: null == firstNumberController
          ? _value.firstNumberController
          : firstNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      secondNumberController: null == secondNumberController
          ? _value.secondNumberController
          : secondNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      ansController: null == ansController
          ? _value.ansController
          : ansController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.isFailed,
      required this.isSuccessful,
      required this.firstNumberController,
      required this.secondNumberController,
      required this.ansController});

  @override
  final bool isLoading;
  @override
  final bool isFailed;
  @override
  final bool isSuccessful;
  @override
  final TextEditingController firstNumberController;
  @override
  final TextEditingController secondNumberController;
  @override
  final TextEditingController ansController;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isFailed: $isFailed, isSuccessful: $isSuccessful, firstNumberController: $firstNumberController, secondNumberController: $secondNumberController, ansController: $ansController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.firstNumberController, firstNumberController) ||
                other.firstNumberController == firstNumberController) &&
            (identical(other.secondNumberController, secondNumberController) ||
                other.secondNumberController == secondNumberController) &&
            (identical(other.ansController, ansController) ||
                other.ansController == ansController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isFailed,
      isSuccessful,
      firstNumberController,
      secondNumberController,
      ansController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final bool isFailed,
      required final bool isSuccessful,
      required final TextEditingController firstNumberController,
      required final TextEditingController secondNumberController,
      required final TextEditingController ansController}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  bool get isFailed;
  @override
  bool get isSuccessful;
  @override
  TextEditingController get firstNumberController;
  @override
  TextEditingController get secondNumberController;
  @override
  TextEditingController get ansController;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
