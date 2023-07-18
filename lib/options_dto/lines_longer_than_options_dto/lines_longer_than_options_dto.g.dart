// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'lines_longer_than_options_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LinesLongerThanOptionsDto _$$_LinesLongerThanOptionsDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_LinesLongerThanOptionsDto',
      json,
      ($checkedConvert) {
        final val = _$_LinesLongerThanOptionsDto(
          charsLimit: $checkedConvert('chars_limit', (v) => v as int? ?? 120),
        );
        return val;
      },
      fieldKeyMap: const {'charsLimit': 'chars_limit'},
    );

Map<String, dynamic> _$$_LinesLongerThanOptionsDtoToJson(_$_LinesLongerThanOptionsDto instance) => <String, dynamic>{
      'chars_limit': instance.charsLimit,
    };
