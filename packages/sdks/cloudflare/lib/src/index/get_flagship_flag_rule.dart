// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flag_rule_condition.dart';
import 'get_flagship_flag_rule_rollout.dart';

class GetFlagshipFlagRule {
  /// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
  final pulumi.Input<List<GetFlagshipFlagRuleCondition>> conditions;
  /// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
  final pulumi.Input<int> priority;
  final pulumi.Input<GetFlagshipFlagRuleRollout> rollout;
  /// Variation served when this rule matches. Must be a key in `variations`.
  final pulumi.Input<String> serveVariation;

  /// Creates a new [GetFlagshipFlagRule].
  /// [conditions] Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
  /// [priority] Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
  /// [rollout] Required.
  /// [serveVariation] Variation served when this rule matches. Must be a key in `variations`.
  const GetFlagshipFlagRule({
    required this.conditions,
    required this.priority,
    required this.rollout,
    required this.serveVariation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GetFlagshipFlagRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetFlagshipFlagRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'rollout': pulumi.Input.mapInputValue<GetFlagshipFlagRuleRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
      'serveVariation': serveVariation,
    };
  }

  factory GetFlagshipFlagRule.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagRule(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFlagshipFlagRuleCondition>(map['conditions']!, (value) => GetFlagshipFlagRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      rollout: pulumi.Input.fromValue(GetFlagshipFlagRuleRollout.fromMap((map['rollout']! as Map).cast<String, dynamic>())),
      serveVariation: pulumi.Input.fromValue(map['serveVariation'] as String),
    );
  }
}
