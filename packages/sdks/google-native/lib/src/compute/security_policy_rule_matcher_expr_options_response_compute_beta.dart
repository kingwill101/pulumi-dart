// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_expr_options_recaptcha_options_response_compute_beta.dart';

class SecurityPolicyRuleMatcherExprOptionsResponseComputeBeta {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final pulumi.Input<
    SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta
  >
  recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsResponseComputeBeta].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  SecurityPolicyRuleMatcherExprOptionsResponseComputeBeta({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions':
          pulumi.Input.mapInputValue<
            SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta,
            Map<String, dynamic>
          >(recaptchaOptions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleMatcherExprOptionsResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleMatcherExprOptionsResponseComputeBeta(
      recaptchaOptions: pulumi.Input.fromValue(
        SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponseComputeBeta.fromMap(
          (map['recaptchaOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
