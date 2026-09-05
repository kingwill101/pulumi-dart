// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsHttpVersion {
  /// A condition operator. Possible values are `Equal` and `NotEqual`.
  final pulumi.Input<String> operator;
  /// A list of one or more HTTP versions to match. Possible values are `2.0`, `1.1`, `1.0`, and `0.9`.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsHttpVersion].
  /// [operator] A condition operator. Possible values are `Equal` and `NotEqual`.
  /// [values] A list of one or more HTTP versions to match. Possible values are `2.0`, `1.1`, `1.0`, and `0.9`.
  const FrontdoorBatchRuleSetRuleConditionsHttpVersion({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsHttpVersion.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsHttpVersion(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
