// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleSuppressionConditionTargetResource {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final pulumi.Input<String> operator;
  /// A list of values to match for a given condition. The values should be valid resource IDs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionTargetResource].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] A list of values to match for a given condition. The values should be valid resource IDs.
  const AlertProcessingRuleSuppressionConditionTargetResource({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleSuppressionConditionTargetResource.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionConditionTargetResource(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
