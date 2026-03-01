// ignore_for_file: unused_element, unnecessary_cast


/// Simplified google.rpc.Status type (omitting details).
class SecurityPolicyRuleRateLimitOptionsRpcStatusResponse {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int code;
  /// A developer-facing error message, which should be in English.
  final String message;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsRpcStatusResponse].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [message] A developer-facing error message, which should be in English.
  SecurityPolicyRuleRateLimitOptionsRpcStatusResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsRpcStatusResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsRpcStatusResponse(
      code: map['code'] as int,
      message: map['message'] as String,
    );
  }
}

