// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flags_result_rule_condition.dart';
import 'get_flagship_flags_result_rule_rollout.dart';

class GetFlagshipFlagsResultRule {
  /// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
  final pulumi.Input<List<GetFlagshipFlagsResultRuleCondition>> conditions;
  /// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
  final pulumi.Input<int> priority;
  final pulumi.Input<GetFlagshipFlagsResultRuleRollout> rollout;
  /// Variation served when this rule matches. Must be a key in `variations`.
  final pulumi.Input<String> serveVariation;

  /// Creates a new [GetFlagshipFlagsResultRule].
  /// [conditions] Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
  /// [priority] Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
  /// [rollout] Required.
  /// [serveVariation] Variation served when this rule matches. Must be a key in `variations`.
  const GetFlagshipFlagsResultRule({
    required this.conditions,
    required this.priority,
    required this.rollout,
    required this.serveVariation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GetFlagshipFlagsResultRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetFlagshipFlagsResultRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'rollout': pulumi.Input.mapInputValue<GetFlagshipFlagsResultRuleRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
      'serveVariation': serveVariation,
    };
  }

  factory GetFlagshipFlagsResultRule.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagsResultRule(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFlagshipFlagsResultRuleCondition>(map['conditions']!, (value) => GetFlagshipFlagsResultRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      rollout: pulumi.Input.fromValue(GetFlagshipFlagsResultRuleRollout.fromMap((map['rollout']! as Map).cast<String, dynamic>())),
      serveVariation: pulumi.Input.fromValue(map['serveVariation'] as String),
    );
  }
}
