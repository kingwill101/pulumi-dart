// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleExpiration {
  /// Defines the default duration a policy active in minutes. Must set in order to use the `resetExpiration` endpoint on this rule.
  final pulumi.Input<int?>? duration;
  /// Indicates whether the policy is expired.
  final pulumi.Input<bool?>? expired;
  /// Show the timestamp when the policy expires and stops applying.  The value must follow RFC 3339 and include a UTC offset.  The system accepts non-zero offsets but converts them to the equivalent UTC+00:00  value and returns timestamps with a trailing Z. Expiration policies ignore client  timezones and expire globally at the specified expiresAt time.
  final pulumi.Input<String> expiresAt;

  /// Creates a new [TeamsRuleExpiration].
  /// [duration] Defines the default duration a policy active in minutes. Must set in order to use the `resetExpiration` endpoint on this rule.
  /// [expired] Indicates whether the policy is expired.
  /// [expiresAt] Show the timestamp when the policy expires and stops applying.  The value must follow RFC 3339 and include a UTC offset.  The system accepts non-zero offsets but converts them to the equivalent UTC+00:00  value and returns timestamps with a trailing Z. Expiration policies ignore client  timezones and expire globally at the specified expiresAt time.
  const TeamsRuleExpiration({
    this.duration,
    this.expired,
    required this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'expired': ?expired,
      'expiresAt': expiresAt,
    };
  }

  factory TeamsRuleExpiration.fromMap(Map<String, dynamic> map) {
    return TeamsRuleExpiration(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      expired: (() { final guardedValue = map['expired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
    );
  }
}
