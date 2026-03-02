// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheduler settings for standard environment.
class StandardSchedulerSettings {
  /// Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  final pulumi.Input<int>? maxInstances;
  /// Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  final pulumi.Input<int>? minInstances;
  /// Target CPU utilization ratio to maintain when scaling.
  final pulumi.Input<double>? targetCpuUtilization;
  /// Target throughput utilization ratio to maintain when scaling
  final pulumi.Input<double>? targetThroughputUtilization;

  /// Creates a new [StandardSchedulerSettings].
  /// [maxInstances] Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  /// [minInstances] Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  /// [targetCpuUtilization] Target CPU utilization ratio to maintain when scaling.
  /// [targetThroughputUtilization] Target throughput utilization ratio to maintain when scaling
  StandardSchedulerSettings({
    this.maxInstances,
    this.minInstances,
    this.targetCpuUtilization,
    this.targetThroughputUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'targetCpuUtilization': ?targetCpuUtilization,
      'targetThroughputUtilization': ?targetThroughputUtilization,
    };
  }

  factory StandardSchedulerSettings.fromMap(Map<String, dynamic> map) {
    return StandardSchedulerSettings(
      maxInstances: map['maxInstances'] == null ? null : (map['maxInstances'] as int).input(),
      minInstances: map['minInstances'] == null ? null : (map['minInstances'] as int).input(),
      targetCpuUtilization: map['targetCpuUtilization'] == null ? null : (map['targetCpuUtilization'] as double).input(),
      targetThroughputUtilization: map['targetThroughputUtilization'] == null ? null : (map['targetThroughputUtilization'] as double).input(),
    );
  }
}

