// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri {
  /// You can specify an exact match or a partial match by using a field operator and a field value. Available options: EQUALS: The operator matches if the field value equals the specified value. STARTS_WITH: The operator matches if the field value starts with the specified value. ENDS_WITH: The operator matches if the field value ends with the specified value. CONTAINS: The operator matches if the field value contains the specified value. EQUALS_ANY: The operator matches if the field value is any value.
  final pulumi.Input<String> operator;

  /// A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation. The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY.
  final pulumi.Input<String> value;

  /// Creates a new [GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri].
  /// [operator] You can specify an exact match or a partial match by using a field operator and a field value. Available options: EQUALS: The operator matches if the field value equals the specified value. STARTS_WITH: The operator matches if the field value starts with the specified value. ENDS_WITH: The operator matches if the field value ends with the specified value. CONTAINS: The operator matches if the field value contains the specified value. EQUALS_ANY: The operator matches if the field value is any value.
  /// [value] A request field matching the specified value will be excluded from inspection during preconfigured WAF evaluation. The field value must be given if the field operator is not EQUALS_ANY, and cannot be given if the field operator is EQUALS_ANY.
  GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri({
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'operator': operator, 'value': value};
  }

  factory GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
