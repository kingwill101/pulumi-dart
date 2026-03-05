// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Simplified google.rpc.Status type (omitting details).
class SecurityPolicyRuleRateLimitOptionsRpcStatusResponse {
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int> code;
  /// A developer-facing error message, which should be in English.
  final pulumi.Input<String> message;

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
      code: pulumi.Input.fromValue(map['code'] as int),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

