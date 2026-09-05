// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsRequestMethod {
  /// A condition operator. Possible values are `Equal` and `NotEqual`.
  final pulumi.Input<String> operator;
  /// A list of one or more HTTP methods. Possible values are `GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, and `TRACE`. A maximum of `7` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsRequestMethod].
  /// [operator] A condition operator. Possible values are `Equal` and `NotEqual`.
  /// [values] A list of one or more HTTP methods. Possible values are `GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, and `TRACE`. A maximum of `7` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  const FrontdoorBatchRuleSetRuleConditionsRequestMethod({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsRequestMethod.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsRequestMethod(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
