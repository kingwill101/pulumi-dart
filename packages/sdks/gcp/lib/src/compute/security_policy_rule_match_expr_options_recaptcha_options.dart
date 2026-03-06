// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleMatchExprOptionsRecaptchaOptions {
  /// A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final pulumi.Input<List<String>>? actionTokenSiteKeys;
  /// A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final pulumi.Input<List<String>>? sessionTokenSiteKeys;

  /// Creates a new [SecurityPolicyRuleMatchExprOptionsRecaptchaOptions].
  /// [actionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  /// [sessionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  const SecurityPolicyRuleMatchExprOptionsRecaptchaOptions({
    this.actionTokenSiteKeys,
    this.sessionTokenSiteKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionTokenSiteKeys': ?actionTokenSiteKeys,
      'sessionTokenSiteKeys': ?sessionTokenSiteKeys,
    };
  }

  factory SecurityPolicyRuleMatchExprOptionsRecaptchaOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchExprOptionsRecaptchaOptions(
      actionTokenSiteKeys: (() { final guardedValue = map['actionTokenSiteKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sessionTokenSiteKeys: (() { final guardedValue = map['sessionTokenSiteKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

