// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routing_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoutingDto _$RoutingDtoFromJson(Map<String, dynamic> json) {
  return _RoutingDto.fromJson(json);
}

/// @nodoc
mixin _$RoutingDto {
  String get route => throw _privateConstructorUsedError;
  Map<String, String> get queryParameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutingDtoCopyWith<RoutingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutingDtoCopyWith<$Res> {
  factory $RoutingDtoCopyWith(
          RoutingDto value, $Res Function(RoutingDto) then) =
      _$RoutingDtoCopyWithImpl<$Res, RoutingDto>;
  @useResult
  $Res call({String route, Map<String, String> queryParameters});
}

/// @nodoc
class _$RoutingDtoCopyWithImpl<$Res, $Val extends RoutingDto>
    implements $RoutingDtoCopyWith<$Res> {
  _$RoutingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? queryParameters = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoutingDtoCopyWith<$Res>
    implements $RoutingDtoCopyWith<$Res> {
  factory _$$_RoutingDtoCopyWith(
          _$_RoutingDto value, $Res Function(_$_RoutingDto) then) =
      __$$_RoutingDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String route, Map<String, String> queryParameters});
}

/// @nodoc
class __$$_RoutingDtoCopyWithImpl<$Res>
    extends _$RoutingDtoCopyWithImpl<$Res, _$_RoutingDto>
    implements _$$_RoutingDtoCopyWith<$Res> {
  __$$_RoutingDtoCopyWithImpl(
      _$_RoutingDto _value, $Res Function(_$_RoutingDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? queryParameters = null,
  }) {
    return _then(_$_RoutingDto(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      queryParameters: null == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoutingDto implements _RoutingDto {
  _$_RoutingDto(
      {required this.route, required final Map<String, String> queryParameters})
      : _queryParameters = queryParameters;

  factory _$_RoutingDto.fromJson(Map<String, dynamic> json) =>
      _$$_RoutingDtoFromJson(json);

  @override
  final String route;
  final Map<String, String> _queryParameters;
  @override
  Map<String, String> get queryParameters {
    if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_queryParameters);
  }

  @override
  String toString() {
    return 'RoutingDto(route: $route, queryParameters: $queryParameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutingDto &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, route,
      const DeepCollectionEquality().hash(_queryParameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoutingDtoCopyWith<_$_RoutingDto> get copyWith =>
      __$$_RoutingDtoCopyWithImpl<_$_RoutingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoutingDtoToJson(
      this,
    );
  }
}

abstract class _RoutingDto implements RoutingDto {
  factory _RoutingDto(
      {required final String route,
      required final Map<String, String> queryParameters}) = _$_RoutingDto;

  factory _RoutingDto.fromJson(Map<String, dynamic> json) =
      _$_RoutingDto.fromJson;

  @override
  String get route;
  @override
  Map<String, String> get queryParameters;
  @override
  @JsonKey(ignore: true)
  _$$_RoutingDtoCopyWith<_$_RoutingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
