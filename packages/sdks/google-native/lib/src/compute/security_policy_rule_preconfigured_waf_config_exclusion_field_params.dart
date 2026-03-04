// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_op.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams {
  /// The match operator for the field.
  final pulumi.Input<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp
  >?
  op;

  /// The value of the field.
  final pulumi.Input<String>? val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams({
    this.op,
    this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'op':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp,
            String
          >(op, (value) => value.wireValue),
      'val': ?val,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams(
      op: (() {
        final guardedValue = map['op'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsOp.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      val: (() {
        final guardedValue = map['val'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
