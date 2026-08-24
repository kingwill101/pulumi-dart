// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippet_rules_rule.dart';

/// {@template pulumi_index_snippet_rules_snippet_rules_args_doc}
/// The set of arguments for SnippetRules.
/// {@endtemplate}
/// {@macro pulumi_index_snippet_rules_snippet_rules_args_doc}
class SnippetRulesArgs {
  /// Lists snippet rules.
  final pulumi.Input<List<SnippetRulesRule>> rules;
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SnippetRulesArgs].
  /// [rules] Lists snippet rules.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const SnippetRulesArgs({
    required this.rules,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<SnippetRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SnippetRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory SnippetRulesArgs.fromMap(Map<String, dynamic> map) {
    return SnippetRulesArgs(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<SnippetRulesRule>(map['rules']!, (value) => SnippetRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
