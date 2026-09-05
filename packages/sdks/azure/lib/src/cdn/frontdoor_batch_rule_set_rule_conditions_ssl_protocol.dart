// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsSslProtocol {
  /// A condition operator. Possible values are `Equal` and `NotEqual`.
  final pulumi.Input<String> operator;
  /// A list of one or more SSL protocol values. Possible values are `TLSv1`, `TLSv1.1`, and `TLSv1.2`.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsSslProtocol].
  /// [operator] A condition operator. Possible values are `Equal` and `NotEqual`.
  /// [values] A list of one or more SSL protocol values. Possible values are `TLSv1`, `TLSv1.1`, and `TLSv1.2`.
  const FrontdoorBatchRuleSetRuleConditionsSslProtocol({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsSslProtocol.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsSslProtocol(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
