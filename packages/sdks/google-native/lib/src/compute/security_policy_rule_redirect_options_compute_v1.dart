// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_redirect_options_type_compute_v1.dart';

class SecurityPolicyRuleRedirectOptionsComputeV1 {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final pulumi.Input<String>? target;
  /// Type of the redirect action.
  final pulumi.Input<SecurityPolicyRuleRedirectOptionsTypeComputeV1>? type;

  /// Creates a new [SecurityPolicyRuleRedirectOptionsComputeV1].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action.
  const SecurityPolicyRuleRedirectOptionsComputeV1({
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'type': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptionsTypeComputeV1, String>(type, (value) => value.wireValue),
    };
  }

  factory SecurityPolicyRuleRedirectOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptionsComputeV1(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRedirectOptionsTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}
