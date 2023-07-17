// ignore_for_file: public_member_api_docs, sort_constructors_first
// This is the entrypoint of our custom linter
import 'package:analyzer/error/listener.dart';
import 'package:collection/collection.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:lines_longer_than/options/lines_longer_than_options.dart';
import 'package:lines_longer_than/options_dto/lines_longer_than_options_dto/lines_longer_than_options_dto.dart';
import 'package:meta/meta.dart';

class LinesLongerThan extends DartLintRule {
  static const ruleName = 'lines_longer_than';
  static const options = 'chars_limit';

  final CustomLintConfigs configs;

  LinesLongerThan(this.configs)
      : super(
          code: LintCode(
            name: ruleName,
            problemMessage: 'The line length exceeds the ${_retrieveCharsLimit(configs).charsLimit}'
                '-character limit. Try breaking the line across multiple lines.',
          ),
        );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    final options = _retrieveCharsLimit(configs);

    context.registry.addCompilationUnit(
      (node) {
        if (node.length <= 0) return;
        final linesData = mapOffsetsToListLengths(node.lineInfo.lineStarts, node.length);
        for (final lineData in linesData) {
          if (lineData.lineLength > options.charsLimit) {
            reporter.reportErrorForOffset(
              code,
              lineData.startOffset,
              lineData.lineLength,
            );
          }
        }
      },
    );
  }

  static LinesLongerThanOptions _retrieveCharsLimit(CustomLintConfigs config) {
    final ruleConfig = config.rules[LinesLongerThan.ruleName];
    final option = LinesLongerThanOptionsDto.fromJson(ruleConfig?.json).toDomain();

    return option;
  }
}

@immutable
class LineData {
  final int startOffset;
  final int lineLength;

  const LineData({
    required this.startOffset,
    required this.lineLength,
  });

  @override
  String toString() => 'LineData(startOffset: $startOffset, lineLength: $lineLength)';
}

List<LineData> mapOffsetsToListLengths(List<int> offsets, int length) {
  if (offsets.isEmpty) return [];
  if (length < offsets.last) {
    throw StateError('Incorrect node length');
  }

  if (offsets.length == 1) {
    return [
      LineData(
        startOffset: 0,
        lineLength: length,
      )
    ];
  }

  final lengths = offsets.mapIndexed(
    (index, currentOffset) {
      final nextOffset = offsets.elementAtOrNull(index + 1) ?? length;
      return nextOffset - currentOffset;
    },
  );

  return lengths
      .mapIndexed(
        (index, lineLength) => LineData(
          startOffset: offsets[index],
          lineLength: lineLength,
        ),
      )
      .toList();
}
