// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_op_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1 {
  /// The match operator for the field.
  final pulumi.Input<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1>? op;
  /// The value of the field.
  final pulumi.Input<String>? val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1({
    this.op,
    this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'op': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1, String>(op, (value) => value.value),
      'val': ?val,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1(
      op: map['op'] == null ? null : (SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeV1.fromValue(map['op'] as String)).input(),
      val: map['val'] == null ? null : (map['val'] as String).input(),
    );
  }
}

