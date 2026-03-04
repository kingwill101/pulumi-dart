// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by CPU usage.
class CpuUtilizationAppengineV1beta {
  /// Period of time over which CPU utilization is calculated.
  final pulumi.Input<String>? aggregationWindowLength;

  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final pulumi.Input<double>? targetUtilization;

  /// Creates a new [CpuUtilizationAppengineV1beta].
  /// [aggregationWindowLength] Period of time over which CPU utilization is calculated.
  /// [targetUtilization] Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  CpuUtilizationAppengineV1beta({
    this.aggregationWindowLength,
    this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationWindowLength': ?aggregationWindowLength,
      'targetUtilization': ?targetUtilization,
    };
  }

  factory CpuUtilizationAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return CpuUtilizationAppengineV1beta(
      aggregationWindowLength: (() {
        final guardedValue = map['aggregationWindowLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetUtilization: (() {
        final guardedValue = map['targetUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
