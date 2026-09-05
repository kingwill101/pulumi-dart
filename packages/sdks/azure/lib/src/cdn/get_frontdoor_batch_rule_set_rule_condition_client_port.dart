// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleConditionClientPort {
  /// The operator for this condition.
  final pulumi.Input<String> operator;
  /// The SSL protocol values associated with this condition.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleConditionClientPort].
  /// [operator] The operator for this condition.
  /// [values] The SSL protocol values associated with this condition.
  const GetFrontdoorBatchRuleSetRuleConditionClientPort({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleConditionClientPort.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleConditionClientPort(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
