import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lines_longer_than/options/lines_longer_than_options.dart';

part 'lines_longer_than_options_dto.freezed.dart';
part 'lines_longer_than_options_dto.g.dart';

@freezed
class LinesLongerThanOptionsDto with _$LinesLongerThanOptionsDto {
  const LinesLongerThanOptionsDto._();
  const factory LinesLongerThanOptionsDto({
    @Default(120) int charsLimit,
  }) = _LinesLongerThanOptionsDto;

  factory LinesLongerThanOptionsDto.fromJson(Map<String, dynamic>? json) =>
      json == null ? const LinesLongerThanOptionsDto() : _$LinesLongerThanOptionsDtoFromJson(json);

  LinesLongerThanOptions toDomain() => LinesLongerThanOptions(
        charsLimit: charsLimit,
      );
}
