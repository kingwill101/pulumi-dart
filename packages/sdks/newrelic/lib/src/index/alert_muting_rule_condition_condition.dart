// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertMutingRuleConditionCondition {
  /// The attribute on an incident.
  final pulumi.Input<String> attribute;
  /// The operator used to compare the attribute's value with the supplied value(s).
  final pulumi.Input<String> operator;
  /// The value(s) to compare against the attribute's value.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertMutingRuleConditionCondition].
  /// [attribute] The attribute on an incident.
  /// [operator] The operator used to compare the attribute's value with the supplied value(s).
  /// [values] The value(s) to compare against the attribute's value.
  AlertMutingRuleConditionCondition({
    required this.attribute,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'operator': operator,
      'values': values,
    };
  }

  factory AlertMutingRuleConditionCondition.fromMap(Map<String, dynamic> map) {
    return AlertMutingRuleConditionCondition(
      attribute: (map['attribute'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

