// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flagship_flag_rule_condition.dart';
import 'flagship_flag_rule_rollout.dart';

class FlagshipFlagRule {
  /// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
  final pulumi.Input<List<FlagshipFlagRuleCondition>> conditions;
  /// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
  final pulumi.Input<int> priority;
  final pulumi.Input<FlagshipFlagRuleRollout?>? rollout;
  /// Variation served when this rule matches. Must be a key in `variations`.
  final pulumi.Input<String> serveVariation;

  /// Creates a new [FlagshipFlagRule].
  /// [conditions] Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
  /// [priority] Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
  /// [rollout] Optional.
  /// [serveVariation] Variation served when this rule matches. Must be a key in `variations`.
  const FlagshipFlagRule({
    required this.conditions,
    required this.priority,
    this.rollout,
    required this.serveVariation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<FlagshipFlagRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<FlagshipFlagRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'rollout': ?pulumi.Input.mapOptionalInputValue<FlagshipFlagRuleRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
      'serveVariation': serveVariation,
    };
  }

  factory FlagshipFlagRule.fromMap(Map<String, dynamic> map) {
    return FlagshipFlagRule(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<FlagshipFlagRuleCondition>(map['conditions']!, (value) => FlagshipFlagRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlagshipFlagRuleRollout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serveVariation: pulumi.Input.fromValue(map['serveVariation'] as String),
    );
  }
}
