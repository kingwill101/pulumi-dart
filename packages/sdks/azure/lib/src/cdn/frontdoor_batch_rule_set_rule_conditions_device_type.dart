// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsDeviceType {
  /// A condition operator. Possible values are `Equal` and `NotEqual`.
  final pulumi.Input<String> operator;
  /// The device type to match. Possible values are `Mobile` and `Desktop`.
  ///
  /// &gt; **Note:** Currently, only a single value may be specified.
  final pulumi.Input<String> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsDeviceType].
  /// [operator] A condition operator. Possible values are `Equal` and `NotEqual`.
  /// [values] The device type to match. Possible values are `Mobile` and `Desktop`.
  const FrontdoorBatchRuleSetRuleConditionsDeviceType({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsDeviceType.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsDeviceType(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue(map['values'] as String),
    );
  }
}
