// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyExpiration {
  /// Defines the default duration a policy active in minutes. Must set in order to use the `resetExpiration` endpoint on this rule.
  final pulumi.Input<int> duration;
  /// Indicates whether the policy is expired.
  final pulumi.Input<bool> expired;
  /// Show the timestamp when the policy expires and stops applying.  The value must follow RFC 3339 and include a UTC offset.  The system accepts non-zero offsets but converts them to the equivalent UTC+00:00  value and returns timestamps with a trailing Z. Expiration policies ignore client  timezones and expire globally at the specified expiresAt time.
  final pulumi.Input<String> expiresAt;

  /// Creates a new [GetZeroTrustGatewayPolicyExpiration].
  /// [duration] Defines the default duration a policy active in minutes. Must set in order to use the `resetExpiration` endpoint on this rule.
  /// [expired] Indicates whether the policy is expired.
  /// [expiresAt] Show the timestamp when the policy expires and stops applying.  The value must follow RFC 3339 and include a UTC offset.  The system accepts non-zero offsets but converts them to the equivalent UTC+00:00  value and returns timestamps with a trailing Z. Expiration policies ignore client  timezones and expire globally at the specified expiresAt time.
  const GetZeroTrustGatewayPolicyExpiration({
    required this.duration,
    required this.expired,
    required this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'expired': expired,
      'expiresAt': expiresAt,
    };
  }

  factory GetZeroTrustGatewayPolicyExpiration.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyExpiration(
      duration: pulumi.Input.fromValue((map['duration'] as num).toInt()),
      expired: pulumi.Input.fromValue(map['expired'] as bool),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
    );
  }
}
