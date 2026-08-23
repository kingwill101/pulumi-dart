// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_redirect_options_type.dart';

class SecurityPolicyRuleRedirectOptions {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final pulumi.Input<String>? target;
  /// Type of the redirect action.
  final pulumi.Input<SecurityPolicyRuleRedirectOptionsType>? type;

  /// Creates a new [SecurityPolicyRuleRedirectOptions].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action.
  const SecurityPolicyRuleRedirectOptions({
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'type': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptionsType, String>(type, (value) => value.wireValue),
    };
  }

  factory SecurityPolicyRuleRedirectOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptions(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRedirectOptionsType.fromValue(guardedValue as String)); })(),
    );
  }
}
