// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleRedirectOptionsResponseComputeBeta {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  final String target;
  /// Type of the redirect action.
  final String type;

  /// Creates a new [SecurityPolicyRuleRedirectOptionsResponseComputeBeta].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
  /// [type] Type of the redirect action.
  SecurityPolicyRuleRedirectOptionsResponseComputeBeta({
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
      'type': type,
    };
  }

  factory SecurityPolicyRuleRedirectOptionsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRedirectOptionsResponseComputeBeta(
      target: map['target'] as String,
      type: map['type'] as String,
    );
  }
}

