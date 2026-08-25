// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionAutomaticScalingCpuUtilization {
  /// Period of time over which CPU utilization is calculated.
  final pulumi.Input<String?>? aggregationWindowLength;
  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final pulumi.Input<double> targetUtilization;

  /// Creates a new [FlexibleAppVersionAutomaticScalingCpuUtilization].
  /// [aggregationWindowLength] Period of time over which CPU utilization is calculated.
  /// [targetUtilization] Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  const FlexibleAppVersionAutomaticScalingCpuUtilization({
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
      aggregationWindowLength: (() { final guardedValue = map['aggregationWindowLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetUtilization: pulumi.Input.fromValue((map['targetUtilization'] as num).toDouble()),
    );
  }
}
