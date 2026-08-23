// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_expr_options_recaptcha_options.dart';

class SecurityPolicyRuleMatcherExprOptions {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  final pulumi.Input<SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions>? recaptchaOptions;

  /// Creates a new [SecurityPolicyRuleMatcherExprOptions].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field will have no effect.
  const SecurityPolicyRuleMatcherExprOptions({
    this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions, Map<String, dynamic>>(recaptchaOptions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleMatcherExprOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherExprOptions(
      recaptchaOptions: (() { final guardedValue = map['recaptchaOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
