// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheduler settings for standard environment.
class StandardSchedulerSettingsResponse {
  /// Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  final pulumi.Input<int> maxInstances;
  /// Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  final pulumi.Input<int> minInstances;
  /// Target CPU utilization ratio to maintain when scaling.
  final pulumi.Input<double> targetCpuUtilization;
  /// Target throughput utilization ratio to maintain when scaling
  final pulumi.Input<double> targetThroughputUtilization;

  /// Creates a new [StandardSchedulerSettingsResponse].
  /// [maxInstances] Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  /// [minInstances] Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  /// [targetCpuUtilization] Target CPU utilization ratio to maintain when scaling.
  /// [targetThroughputUtilization] Target throughput utilization ratio to maintain when scaling
  const StandardSchedulerSettingsResponse({
    required this.maxInstances,
    required this.minInstances,
    required this.targetCpuUtilization,
    required this.targetThroughputUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': maxInstances,
      'minInstances': minInstances,
      'targetCpuUtilization': targetCpuUtilization,
      'targetThroughputUtilization': targetThroughputUtilization,
    };
  }

  factory StandardSchedulerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StandardSchedulerSettingsResponse(
      maxInstances: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxInstances'])),
      minInstances: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minInstances'])),
      targetCpuUtilization: pulumi.Input.fromValue((map['targetCpuUtilization'] as num).toDouble()),
      targetThroughputUtilization: pulumi.Input.fromValue((map['targetThroughputUtilization'] as num).toDouble()),
    );
  }
}
