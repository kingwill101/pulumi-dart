// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final pulumi.Input<int> count;
  /// Interval over which the threshold is computed.
  final pulumi.Input<int> intervalSec;

  /// Creates a new [GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  const GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'intervalSec': intervalSec,
    };
  }

  factory GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold(
      count: pulumi.Input.fromValue(map['count'] as int),
      intervalSec: pulumi.Input.fromValue(map['intervalSec'] as int),
    );
  }
}

