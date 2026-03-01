// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleActionGroupConditionTargetResource {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final String operator;
  /// A list of values to match for a given condition. The values should be valid resource IDs.
  final List<String> values;

  /// Creates a new [AlertProcessingRuleActionGroupConditionTargetResource].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] A list of values to match for a given condition. The values should be valid resource IDs.
  AlertProcessingRuleActionGroupConditionTargetResource({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleActionGroupConditionTargetResource.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupConditionTargetResource(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

