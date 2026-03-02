// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1 {
  /// The match operator for the field.
  final pulumi.Input<String> op;
  /// The value of the field.
  final pulumi.Input<String> val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'op': op,
      'val': val,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1(
      op: (map['op'] as String).input(),
      val: (map['val'] as String).input(),
    );
  }
}

