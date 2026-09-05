// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsSocketAddress {
  /// The type of match. Possible values are `IPMatch` and `NotIPMatch`.
  final pulumi.Input<String> operator;
  /// One or more IP address ranges. A maximum of `25` values may be defined. If multiple IP address ranges are specified, they are evaluated using `OR` logic.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsSocketAddress].
  /// [operator] The type of match. Possible values are `IPMatch` and `NotIPMatch`.
  /// [values] One or more IP address ranges. A maximum of `25` values may be defined. If multiple IP address ranges are specified, they are evaluated using `OR` logic.
  const FrontdoorBatchRuleSetRuleConditionsSocketAddress({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsSocketAddress.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsSocketAddress(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
