// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheduler settings for standard environment.
class StandardSchedulerSettingsAppengineV1beta {
  /// Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  final pulumi.Input<int>? maxInstances;
  /// Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  final pulumi.Input<int>? minInstances;
  /// Target CPU utilization ratio to maintain when scaling.
  final pulumi.Input<double>? targetCpuUtilization;
  /// Target throughput utilization ratio to maintain when scaling
  final pulumi.Input<double>? targetThroughputUtilization;

  /// Creates a new [StandardSchedulerSettingsAppengineV1beta].
  /// [maxInstances] Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  /// [minInstances] Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  /// [targetCpuUtilization] Target CPU utilization ratio to maintain when scaling.
  /// [targetThroughputUtilization] Target throughput utilization ratio to maintain when scaling
  StandardSchedulerSettingsAppengineV1beta({
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

  factory StandardSchedulerSettingsAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return StandardSchedulerSettingsAppengineV1beta(
      maxInstances: map['maxInstances'] == null ? null : (map['maxInstances']! as int).input(),
      minInstances: map['minInstances'] == null ? null : (map['minInstances']! as int).input(),
      targetCpuUtilization: map['targetCpuUtilization'] == null ? null : (map['targetCpuUtilization']! as double).input(),
      targetThroughputUtilization: map['targetThroughputUtilization'] == null ? null : (map['targetThroughputUtilization']! as double).input(),
    );
  }
}

