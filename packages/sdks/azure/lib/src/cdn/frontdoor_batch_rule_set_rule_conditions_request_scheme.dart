// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsRequestScheme {
  /// A condition operator. Possible values are `Equal` and `NotEqual`.
  final pulumi.Input<String> operator;
  /// The request protocol to match. Possible values are `HTTP` and `HTTPS`.
  ///
  /// &gt; **Note:** Currently, only a single value may be specified
  final pulumi.Input<String> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsRequestScheme].
  /// [operator] A condition operator. Possible values are `Equal` and `NotEqual`.
  /// [values] The request protocol to match. Possible values are `HTTP` and `HTTPS`.
  const FrontdoorBatchRuleSetRuleConditionsRequestScheme({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsRequestScheme.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsRequestScheme(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue(map['values'] as String),
    );
  }
}
