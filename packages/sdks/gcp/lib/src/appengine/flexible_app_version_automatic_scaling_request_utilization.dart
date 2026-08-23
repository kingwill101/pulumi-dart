// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionAutomaticScalingRequestUtilization {
  /// Target number of concurrent requests.
  final pulumi.Input<double>? targetConcurrentRequests;
  /// Target requests per second.
  final pulumi.Input<String>? targetRequestCountPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingRequestUtilization].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  const FlexibleAppVersionAutomaticScalingRequestUtilization({
    this.targetConcurrentRequests,
    this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConcurrentRequests': ?targetConcurrentRequests,
      'targetRequestCountPerSecond': ?targetRequestCountPerSecond,
    };
  }

  factory FlexibleAppVersionAutomaticScalingRequestUtilization.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingRequestUtilization(
      targetConcurrentRequests: (() { final guardedValue = map['targetConcurrentRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      targetRequestCountPerSecond: (() { final guardedValue = map['targetRequestCountPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
