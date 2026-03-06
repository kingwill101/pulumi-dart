// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleActionGroupConditionTargetResourceGroup {
  /// The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  final pulumi.Input<String> operator;
  /// A list of values to match for a given condition. The values should be valid resource group IDs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertProcessingRuleActionGroupConditionTargetResourceGroup].
  /// [operator] The operator for a given condition. Possible values are `Equals`, `NotEquals`, `Contains`, and `DoesNotContain`.
  /// [values] A list of values to match for a given condition. The values should be valid resource group IDs.
  const AlertProcessingRuleActionGroupConditionTargetResourceGroup({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleActionGroupConditionTargetResourceGroup.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupConditionTargetResourceGroup(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

