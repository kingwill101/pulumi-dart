// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_op_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta {
  /// The match operator for the field.
  final pulumi.Input<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta>? op;
  /// The value of the field.
  final pulumi.Input<String>? val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta({
    this.op,
    this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'op': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta, String>(op, (value) => value.value),
      'val': ?val,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta(
      op: map['op'] == null ? null : (SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOpComputeBeta.fromValue(map['op']! as String)).input(),
      val: map['val'] == null ? null : (map['val']! as String).input(),
    );
  }
}

