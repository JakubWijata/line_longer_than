// ignore_for_file: public_member_api_docs, sort_constructors_first
// This is the entrypoint of our custom linter

import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:lines_longer_than/rules/lines_longer_than.dart';

PluginBase createPlugin() => _CustomLinter();

class _CustomLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        LinesLongerThan(configs),
      ];
}
