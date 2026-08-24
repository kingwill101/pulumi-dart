// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippet_rules_rule.dart';

/// Input properties used for looking up and filtering SnippetRules resources.
class SnippetRulesState {
  /// Lists snippet rules.
  final pulumi.Input<List<SnippetRulesRule>?>? rules;
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [SnippetRulesState].
  /// [rules] Lists snippet rules.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const SnippetRulesState({
    this.rules,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SnippetRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SnippetRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory SnippetRulesState.fromMap(Map<String, dynamic> map) {
    return SnippetRulesState(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnippetRulesRule>(guardedValue, (value) => SnippetRulesRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
