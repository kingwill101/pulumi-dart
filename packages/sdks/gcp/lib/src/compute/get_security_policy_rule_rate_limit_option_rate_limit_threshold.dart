// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final pulumi.Input<int> count;
  /// Interval over which the threshold is computed.
  final pulumi.Input<int> intervalSec;

  /// Creates a new [GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  const GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'intervalSec': intervalSec,
    };
  }

  factory GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      intervalSec: pulumi.Input.fromValue((map['intervalSec'] as num).toInt()),
    );
  }
}
