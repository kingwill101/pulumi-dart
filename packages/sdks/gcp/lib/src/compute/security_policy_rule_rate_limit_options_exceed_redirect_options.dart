// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final pulumi.Input<String>? target;
  /// Type of the redirect action.
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action.
  SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions({
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'type': ?type,
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions(
      target: map['target'] == null ? null : (map['target'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

