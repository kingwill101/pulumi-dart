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
  const SecurityPolicyRuleRateLimitOptionsRpcStatus({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
