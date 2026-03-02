// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionAutomaticScalingCpuUtilization {
  /// Period of time over which CPU utilization is calculated.
  final pulumi.Input<String>? aggregationWindowLength;
  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final pulumi.Input<double> targetUtilization;

  /// Creates a new [FlexibleAppVersionAutomaticScalingCpuUtilization].
  /// [aggregationWindowLength] Period of time over which CPU utilization is calculated.
  /// [targetUtilization] Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  FlexibleAppVersionAutomaticScalingCpuUtilization({
    this.aggregationWindowLength,
    required this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationWindowLength': ?aggregationWindowLength,
      'targetUtilization': targetUtilization,
    };
  }

  factory FlexibleAppVersionAutomaticScalingCpuUtilization.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingCpuUtilization(
      aggregationWindowLength: map['aggregationWindowLength'] == null ? null : (map['aggregationWindowLength'] as String).input(),
      targetUtilization: (map['targetUtilization'] as double).input(),
    );
  }
}

