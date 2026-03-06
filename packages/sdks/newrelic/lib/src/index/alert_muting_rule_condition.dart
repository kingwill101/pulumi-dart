// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_muting_rule_condition_condition.dart';

class AlertMutingRuleCondition {
  /// The individual MutingRuleConditions within the group. See Nested conditions blocks below for details.
  final pulumi.Input<List<AlertMutingRuleConditionCondition>> conditions;
  /// The operator used to combine all the MutingRuleConditions within the group. Valid values are `AND`, `OR`.
  final pulumi.Input<String> operator;

  /// Creates a new [AlertMutingRuleCondition].
  /// [conditions] The individual MutingRuleConditions within the group. See Nested conditions blocks below for details.
  /// [operator] The operator used to combine all the MutingRuleConditions within the group. Valid values are `AND`, `OR`.
  const AlertMutingRuleCondition({
    required this.conditions,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<AlertMutingRuleConditionCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AlertMutingRuleConditionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operator': operator,
    };
  }

  factory AlertMutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return AlertMutingRuleCondition(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<AlertMutingRuleConditionCondition>(map['conditions']!, (value) => AlertMutingRuleConditionCondition.fromMap((value as Map).cast<String, dynamic>()))),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}

