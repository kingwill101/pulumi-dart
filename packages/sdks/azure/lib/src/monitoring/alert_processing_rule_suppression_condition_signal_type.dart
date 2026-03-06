// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleSuppressionConditionSignalType {
  /// The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  final pulumi.Input<String> operator;
  /// Specifies a list of values to match for a given condition. Possible values are `Metric`, `Log`, `Unknown`, and `Health`.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionSignalType].
  /// [operator] The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  /// [values] Specifies a list of values to match for a given condition. Possible values are `Metric`, `Log`, `Unknown`, and `Health`.
  const AlertProcessingRuleSuppressionConditionSignalType({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleSuppressionConditionSignalType.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionConditionSignalType(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

