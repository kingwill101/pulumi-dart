// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyRuleMatchExprOptionRecaptchaOption {
  /// A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created
  final pulumi.Input<List<String>> actionTokenSiteKeys;

  /// A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  final pulumi.Input<List<String>> sessionTokenSiteKeys;

  /// Creates a new [GetSecurityPolicyRuleMatchExprOptionRecaptchaOption].
  /// [actionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA action-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created
  /// [sessionTokenSiteKeys] A list of site keys to be used during the validation of reCAPTCHA session-tokens. The provided site keys need to be created from reCAPTCHA API under the same project where the security policy is created.
  GetSecurityPolicyRuleMatchExprOptionRecaptchaOption({
    required this.actionTokenSiteKeys,
    required this.sessionTokenSiteKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionTokenSiteKeys': actionTokenSiteKeys,
      'sessionTokenSiteKeys': sessionTokenSiteKeys,
    };
  }

  factory GetSecurityPolicyRuleMatchExprOptionRecaptchaOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityPolicyRuleMatchExprOptionRecaptchaOption(
      actionTokenSiteKeys: pulumi.Input.fromValue(
        (map['actionTokenSiteKeys'] as List).cast<String>(),
      ),
      sessionTokenSiteKeys: pulumi.Input.fromValue(
        (map['sessionTokenSiteKeys'] as List).cast<String>(),
      ),
    );
  }
}
