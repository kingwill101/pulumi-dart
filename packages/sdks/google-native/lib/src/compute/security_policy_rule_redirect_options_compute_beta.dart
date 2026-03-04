// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_redirect_options_type_compute_beta.dart';

class SecurityPolicyRuleRedirectOptionsComputeBeta {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final pulumi.Input<String>? target;

  /// Type of the redirect action.
  final pulumi.Input<SecurityPolicyRuleRedirectOptionsTypeComputeBeta>? type;

  /// Creates a new [SecurityPolicyRuleRedirectOptionsComputeBeta].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action.
  SecurityPolicyRuleRedirectOptionsComputeBeta({this.target, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyRuleRedirectOptionsTypeComputeBeta,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory SecurityPolicyRuleRedirectOptionsComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleRedirectOptionsComputeBeta(
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyRuleRedirectOptionsTypeComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
