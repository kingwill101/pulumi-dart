// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleConditionQueryString {
  /// The operator for this condition.
  final pulumi.Input<String> operator;
  /// The transforms associated with this condition.
  final pulumi.Input<List<String>> transforms;
  /// The SSL protocol values associated with this condition.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleConditionQueryString].
  /// [operator] The operator for this condition.
  /// [transforms] The transforms associated with this condition.
  /// [values] The SSL protocol values associated with this condition.
  const GetFrontdoorBatchRuleSetRuleConditionQueryString({
    required this.operator,
    required this.transforms,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'transforms': transforms,
      'values': values,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleConditionQueryString.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleConditionQueryString(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: pulumi.Input.fromValue((map['transforms'] as List).cast<String>()),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
