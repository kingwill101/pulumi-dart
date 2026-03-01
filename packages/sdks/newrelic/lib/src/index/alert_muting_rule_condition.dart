// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_muting_rule_condition_condition.dart';

class AlertMutingRuleCondition {
  /// The individual MutingRuleConditions within the group. See Nested conditions blocks below for details.
  final List<AlertMutingRuleConditionCondition> conditions;
  /// The operator used to combine all the MutingRuleConditions within the group. Valid values are `AND`, `OR`.
  final String operator;

  /// Creates a new [AlertMutingRuleCondition].
  /// [conditions] The individual MutingRuleConditions within the group. See Nested conditions blocks below for details.
  /// [operator] The operator used to combine all the MutingRuleConditions within the group. Valid values are `AND`, `OR`.
  AlertMutingRuleCondition({
    required this.conditions,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.encodeList<AlertMutingRuleConditionCondition, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'operator': operator,
    };
  }

  factory AlertMutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return AlertMutingRuleCondition(
      conditions: pulumi.Input.decodeList<AlertMutingRuleConditionCondition>(map['conditions'], (value) => AlertMutingRuleConditionCondition.fromMap((value as Map).cast<String, dynamic>())),
      operator: map['operator'] as String,
    );
  }
}

