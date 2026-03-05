// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final pulumi.Input<String> target;
  /// Type of the redirect action.
  final pulumi.Input<String> type;

  /// Creates a new [GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action.
  GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption({
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
      'type': type,
    };
  }

  factory GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption(
      target: pulumi.Input.fromValue(map['target'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

