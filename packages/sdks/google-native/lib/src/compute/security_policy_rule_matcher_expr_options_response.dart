// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_expr_options_recaptcha_options_response.dart';

class SecurityPolicyRuleMatcherExprOptionsResponse {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final pulumi.Input<SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse> recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptionsResponse].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  const SecurityPolicyRuleMatcherExprOptionsResponse({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions': pulumi.Input.mapInputValue<SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse, Map<String, dynamic>>(recaptchaOptions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleMatcherExprOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptionsResponse(
      recaptchaOptions: pulumi.Input.fromValue(SecurityPolicyRuleMatcherExprOptionsRecaptchaOptionsResponse.fromMap((map['recaptchaOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

