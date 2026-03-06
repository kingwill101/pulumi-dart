// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_match_expr_options_recaptcha_options.dart';

class SecurityPolicyRuleMatchExprOptions {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field has no effect.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleMatchExprOptionsRecaptchaOptions> recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatchExprOptions].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field has no effect.
  const SecurityPolicyRuleMatchExprOptions({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions': pulumi.Input.mapInputValue<SecurityPolicyRuleMatchExprOptionsRecaptchaOptions, Map<String, dynamic>>(recaptchaOptions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleMatchExprOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchExprOptions(
      recaptchaOptions: pulumi.Input.fromValue(SecurityPolicyRuleMatchExprOptionsRecaptchaOptions.fromMap((map['recaptchaOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

