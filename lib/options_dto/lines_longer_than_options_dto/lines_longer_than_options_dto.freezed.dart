// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines_longer_than_options_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinesLongerThanOptionsDto _$LinesLongerThanOptionsDtoFromJson(
    Map<String, dynamic> json) {
  return _LinesLongerThanOptionsDto.fromJson(json);
}

/// @nodoc
mixin _$LinesLongerThanOptionsDto {
  int get charsLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinesLongerThanOptionsDtoCopyWith<LinesLongerThanOptionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinesLongerThanOptionsDtoCopyWith<$Res> {
  factory $LinesLongerThanOptionsDtoCopyWith(LinesLongerThanOptionsDto value,
          $Res Function(LinesLongerThanOptionsDto) then) =
      _$LinesLongerThanOptionsDtoCopyWithImpl<$Res, LinesLongerThanOptionsDto>;
  @useResult
  $Res call({int charsLimit});
}

/// @nodoc
class _$LinesLongerThanOptionsDtoCopyWithImpl<$Res,
        $Val extends LinesLongerThanOptionsDto>
    implements $LinesLongerThanOptionsDtoCopyWith<$Res> {
  _$LinesLongerThanOptionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charsLimit = null,
  }) {
    return _then(_value.copyWith(
      charsLimit: null == charsLimit
          ? _value.charsLimit
          : charsLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinesLongerThanOptionsDtoCopyWith<$Res>
    implements $LinesLongerThanOptionsDtoCopyWith<$Res> {
  factory _$$_LinesLongerThanOptionsDtoCopyWith(
          _$_LinesLongerThanOptionsDto value,
          $Res Function(_$_LinesLongerThanOptionsDto) then) =
      __$$_LinesLongerThanOptionsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int charsLimit});
}

/// @nodoc
class __$$_LinesLongerThanOptionsDtoCopyWithImpl<$Res>
    extends _$LinesLongerThanOptionsDtoCopyWithImpl<$Res,
        _$_LinesLongerThanOptionsDto>
    implements _$$_LinesLongerThanOptionsDtoCopyWith<$Res> {
  __$$_LinesLongerThanOptionsDtoCopyWithImpl(
      _$_LinesLongerThanOptionsDto _value,
      $Res Function(_$_LinesLongerThanOptionsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charsLimit = null,
  }) {
    return _then(_$_LinesLongerThanOptionsDto(
      charsLimit: null == charsLimit
          ? _value.charsLimit
          : charsLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinesLongerThanOptionsDto extends _LinesLongerThanOptionsDto {
  const _$_LinesLongerThanOptionsDto({this.charsLimit = 120}) : super._();

  factory _$_LinesLongerThanOptionsDto.fromJson(Map<String, dynamic> json) =>
      _$$_LinesLongerThanOptionsDtoFromJson(json);

  @override
  @JsonKey()
  final int charsLimit;

  @override
  String toString() {
    return 'LinesLongerThanOptionsDto(charsLimit: $charsLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinesLongerThanOptionsDto &&
            (identical(other.charsLimit, charsLimit) ||
                other.charsLimit == charsLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, charsLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinesLongerThanOptionsDtoCopyWith<_$_LinesLongerThanOptionsDto>
      get copyWith => __$$_LinesLongerThanOptionsDtoCopyWithImpl<
          _$_LinesLongerThanOptionsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinesLongerThanOptionsDtoToJson(
      this,
    );
  }
}

abstract class _LinesLongerThanOptionsDto extends LinesLongerThanOptionsDto {
  const factory _LinesLongerThanOptionsDto({final int charsLimit}) =
      _$_LinesLongerThanOptionsDto;
  const _LinesLongerThanOptionsDto._() : super._();

  factory _LinesLongerThanOptionsDto.fromJson(Map<String, dynamic> json) =
      _$_LinesLongerThanOptionsDto.fromJson;

  @override
  int get charsLimit;
  @override
  @JsonKey(ignore: true)
  _$$_LinesLongerThanOptionsDtoCopyWith<_$_LinesLongerThanOptionsDto>
      get copyWith => throw _privateConstructorUsedError;
}
