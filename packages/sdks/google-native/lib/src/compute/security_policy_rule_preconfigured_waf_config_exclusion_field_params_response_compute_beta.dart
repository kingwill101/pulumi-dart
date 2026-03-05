// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta {
  /// The match operator for the field.
  final pulumi.Input<String> op;
  /// The value of the field.
  final pulumi.Input<String> val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'op': op,
      'val': val,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta(
      op: pulumi.Input.fromValue(map['op'] as String),
      val: pulumi.Input.fromValue(map['val'] as String),
    );
  }
}

