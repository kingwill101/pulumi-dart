// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_expr_options_recaptcha_options_compute_beta.dart';

class SecurityPolicyRuleMatcherExprOptionsComputeBeta {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final pulumi.Input<
    SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsComputeBeta
  >?
  recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsComputeBeta].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  SecurityPolicyRuleMatcherExprOptionsComputeBeta({this.recaptchaOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsComputeBeta,
            Map<String, dynamic>
          >(recaptchaOptions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleMatcherExprOptionsComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleMatcherExprOptionsComputeBeta(
      recaptchaOptions: (() {
        final guardedValue = map['recaptchaOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
