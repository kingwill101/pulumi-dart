// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleSuppressionConditionAlertContext {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final pulumi.Input<String> operator;

  /// Specifies a list of values to match for a given condition.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionAlertContext].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] Specifies a list of values to match for a given condition.
  AlertProcessingRuleSuppressionConditionAlertContext({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'operator': operator, 'values': values};
  }

  factory AlertProcessingRuleSuppressionConditionAlertContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertProcessingRuleSuppressionConditionAlertContext(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
