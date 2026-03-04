// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse {
  /// The match operator for the field.
  final pulumi.Input<String> op;

  /// The value of the field.
  final pulumi.Input<String> val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'op': op, 'val': val};
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse(
      op: pulumi.Input.fromValue(map['op'] as String),
      val: pulumi.Input.fromValue(map['val'] as String),
    );
  }
}
