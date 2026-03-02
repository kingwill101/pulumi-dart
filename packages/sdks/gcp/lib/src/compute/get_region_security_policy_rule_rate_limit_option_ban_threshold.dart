// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final pulumi.Input<int> count;
  /// Interval over which the threshold is computed.
  final pulumi.Input<int> intervalSec;

  /// Creates a new [GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'intervalSec': intervalSec,
    };
  }

  factory GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold(
      count: (map['count'] as int).input(),
      intervalSec: (map['intervalSec'] as int).input(),
    );
  }
}

