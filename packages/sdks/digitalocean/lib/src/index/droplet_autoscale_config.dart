// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DropletAutoscaleConfig {
  /// The cooldown duration between scaling events for the Droplet Autoscale pool.
  final pulumi.Input<int>? cooldownMinutes;
  /// The maximum number of instances to maintain in the Droplet Autoscale pool.
  final pulumi.Input<int>? maxInstances;
  /// The minimum number of instances to maintain in the Droplet Autoscale pool.
  final pulumi.Input<int>? minInstances;
  /// The target average CPU load (in range `[0, 1]`) to maintain in the Droplet Autoscale pool.
  final pulumi.Input<double>? targetCpuUtilization;
  /// The target average Memory load (in range `[0, 1]`) to maintain in the Droplet Autoscale
  /// pool.
  final pulumi.Input<double>? targetMemoryUtilization;
  /// The static number of instances to maintain in the pool Droplet Autoscale pool. This
  /// argument cannot be used with any other config options.
  final pulumi.Input<int>? targetNumberInstances;

  /// Creates a new [DropletAutoscaleConfig].
  /// [cooldownMinutes] The cooldown duration between scaling events for the Droplet Autoscale pool.
  /// [maxInstances] The maximum number of instances to maintain in the Droplet Autoscale pool.
  /// [minInstances] The minimum number of instances to maintain in the Droplet Autoscale pool.
  /// [targetCpuUtilization] The target average CPU load (in range `[0, 1]`) to maintain in the Droplet Autoscale pool.
  /// [targetMemoryUtilization] The target average Memory load (in range `[0, 1]`) to maintain in the Droplet Autoscale
  /// [targetNumberInstances] The static number of instances to maintain in the pool Droplet Autoscale pool. This
  DropletAutoscaleConfig({
    this.cooldownMinutes,
    this.maxInstances,
    this.minInstances,
    this.targetCpuUtilization,
    this.targetMemoryUtilization,
    this.targetNumberInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownMinutes': ?cooldownMinutes,
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'targetCpuUtilization': ?targetCpuUtilization,
      'targetMemoryUtilization': ?targetMemoryUtilization,
      'targetNumberInstances': ?targetNumberInstances,
    };
  }

  factory DropletAutoscaleConfig.fromMap(Map<String, dynamic> map) {
    return DropletAutoscaleConfig(
      cooldownMinutes: map['cooldownMinutes'] == null ? null : (map['cooldownMinutes']! as int).input(),
      maxInstances: map['maxInstances'] == null ? null : (map['maxInstances']! as int).input(),
      minInstances: map['minInstances'] == null ? null : (map['minInstances']! as int).input(),
      targetCpuUtilization: map['targetCpuUtilization'] == null ? null : (map['targetCpuUtilization']! as double).input(),
      targetMemoryUtilization: map['targetMemoryUtilization'] == null ? null : (map['targetMemoryUtilization']! as double).input(),
      targetNumberInstances: map['targetNumberInstances'] == null ? null : (map['targetNumberInstances']! as int).input(),
    );
  }
}

