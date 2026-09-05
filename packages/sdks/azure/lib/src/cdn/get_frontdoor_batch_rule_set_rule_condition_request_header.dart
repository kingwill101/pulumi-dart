// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleConditionRequestHeader {
  /// The name of the Front Door Batch Rule Set.
  final pulumi.Input<String> name;
  /// The operator for this condition.
  final pulumi.Input<String> operator;
  /// The transforms associated with this condition.
  final pulumi.Input<List<String>> transforms;
  /// The SSL protocol values associated with this condition.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleConditionRequestHeader].
  /// [name] The name of the Front Door Batch Rule Set.
  /// [operator] The operator for this condition.
  /// [transforms] The transforms associated with this condition.
  /// [values] The SSL protocol values associated with this condition.
  const GetFrontdoorBatchRuleSetRuleConditionRequestHeader({
    required this.name,
    required this.operator,
    required this.transforms,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'transforms': transforms,
      'values': values,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleConditionRequestHeader.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleConditionRequestHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: pulumi.Input.fromValue((map['transforms'] as List).cast<String>()),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
