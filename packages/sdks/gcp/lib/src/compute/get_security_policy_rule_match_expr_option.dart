// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_match_expr_option_recaptcha_option.dart';

class GetSecurityPolicyRuleMatchExprOption {
  /// reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field has no effect.
  final pulumi.Input<List<GetSecurityPolicyRuleMatchExprOptionRecaptchaOption>> recaptchaOptions;

  /// Creates a new [GetSecurityPolicyRuleMatchExprOption].
  /// [recaptchaOptions] reCAPTCHA configuration options to be applied for the rule. If the rule does not evaluate reCAPTCHA tokens, this field has no effect.
  GetSecurityPolicyRuleMatchExprOption({
    required this.recaptchaOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recaptchaOptions': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleMatchExprOptionRecaptchaOption>, List<Map<String, dynamic>>>(recaptchaOptions, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleMatchExprOptionRecaptchaOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecurityPolicyRuleMatchExprOption.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleMatchExprOption(
      recaptchaOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRuleMatchExprOptionRecaptchaOption>(map['recaptchaOptions']!, (value) => GetSecurityPolicyRuleMatchExprOptionRecaptchaOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

