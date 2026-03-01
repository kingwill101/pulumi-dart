// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleSuppressionConditionAlertContext {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final String operator;
  /// Specifies a list of values to match for a given condition.
  final List<String> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionAlertContext].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] Specifies a list of values to match for a given condition.
  AlertProcessingRuleSuppressionConditionAlertContext({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleSuppressionConditionAlertContext.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionConditionAlertContext(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

