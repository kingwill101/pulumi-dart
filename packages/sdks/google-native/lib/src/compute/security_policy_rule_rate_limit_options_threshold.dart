// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleRateLimitOptionsThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int? count;
  /// Interval over which the threshold is computed.
  final int? intervalSec;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsThreshold].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  SecurityPolicyRuleRateLimitOptionsThreshold({
    this.count,
    this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'intervalSec': ?intervalSec,
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsThreshold.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsThreshold(
      count: map['count'] == null ? null : map['count'] as int,
      intervalSec: map['intervalSec'] == null ? null : map['intervalSec'] as int,
    );
  }
}

