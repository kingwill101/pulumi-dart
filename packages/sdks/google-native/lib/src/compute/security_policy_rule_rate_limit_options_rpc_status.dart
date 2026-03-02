// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Simplified google.rpc.Status type (omitting details).
class SecurityPolicyRuleRateLimitOptionsRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// A developer-facing error message, which should be in English.
  final pulumi.Input<String>? message;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsRpcStatus].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [message] A developer-facing error message, which should be in English.
  SecurityPolicyRuleRateLimitOptionsRpcStatus({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsRpcStatus.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsRpcStatus(
      code: map['code'] == null ? null : (map['code'] as int).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

