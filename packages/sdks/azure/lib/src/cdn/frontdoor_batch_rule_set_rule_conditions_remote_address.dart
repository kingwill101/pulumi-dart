// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleConditionsRemoteAddress {
  /// The type of remote address to match. Possible values are `GeoMatch`, `IPMatch`, `NotGeoMatch`, and `NotIPMatch`.
  final pulumi.Input<String> operator;
  /// A list of CIDR ranges or country codes. A maximum of `25` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  ///
  /// &gt; **Note:** When `operator` is set to `GeoMatch` or `NotGeoMatch`, each value in `values` must be a two-letter uppercase country code.
  ///
  /// &gt; **Note:** When `operator` is set to `IPMatch` or `NotIPMatch`, each value in `values` must be a valid CIDR range.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditionsRemoteAddress].
  /// [operator] The type of remote address to match. Possible values are `GeoMatch`, `IPMatch`, `NotGeoMatch`, and `NotIPMatch`.
  /// [values] A list of CIDR ranges or country codes. A maximum of `25` values may be defined. If multiple values are specified, they are evaluated using `OR` logic.
  const FrontdoorBatchRuleSetRuleConditionsRemoteAddress({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory FrontdoorBatchRuleSetRuleConditionsRemoteAddress.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditionsRemoteAddress(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
