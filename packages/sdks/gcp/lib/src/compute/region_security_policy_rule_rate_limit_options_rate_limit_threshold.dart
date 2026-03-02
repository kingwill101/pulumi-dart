// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionSecurityPolicyRuleRateLimitOptionsRateLimitThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final pulumi.Input<int>? count;
  /// Interval over which the threshold is computed.
  final pulumi.Input<int>? intervalSec;

  /// Creates a new [RegionSecurityPolicyRuleRateLimitOptionsRateLimitThreshold].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  RegionSecurityPolicyRuleRateLimitOptionsRateLimitThreshold({
    this.count,
    this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'intervalSec': ?intervalSec,
    };
  }

  factory RegionSecurityPolicyRuleRateLimitOptionsRateLimitThreshold.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleRateLimitOptionsRateLimitThreshold(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      intervalSec: map['intervalSec'] == null ? null : (map['intervalSec'] as int).input(),
    );
  }
}

