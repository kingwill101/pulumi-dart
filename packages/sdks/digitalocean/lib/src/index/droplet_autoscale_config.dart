// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DropletAutoscaleConfig {
  /// The cooldown duration between scaling events for the Droplet Autoscale pool.
  final pulumi.Input<int?>? cooldownMinutes;
  /// The maximum number of instances to maintain in the Droplet Autoscale pool.
  final pulumi.Input<int?>? maxInstances;
  /// The minimum number of instances to maintain in the Droplet Autoscale pool.
  final pulumi.Input<int?>? minInstances;
  /// The target average CPU load (in range `[0, 1]`) to maintain in the Droplet Autoscale pool.
  final pulumi.Input<double?>? targetCpuUtilization;
  /// The target average Memory load (in range `[0, 1]`) to maintain in the Droplet Autoscale
  /// pool.
  final pulumi.Input<double?>? targetMemoryUtilization;
  /// The static number of instances to maintain in the pool Droplet Autoscale pool. This
  /// argument cannot be used with any other config options.
  final pulumi.Input<int?>? targetNumberInstances;

  /// Creates a new [DropletAutoscaleConfig].
  /// [cooldownMinutes] The cooldown duration between scaling events for the Droplet Autoscale pool.
  /// [maxInstances] The maximum number of instances to maintain in the Droplet Autoscale pool.
  /// [minInstances] The minimum number of instances to maintain in the Droplet Autoscale pool.
  /// [targetCpuUtilization] The target average CPU load (in range `[0, 1]`) to maintain in the Droplet Autoscale pool.
  /// [targetMemoryUtilization] The target average Memory load (in range `[0, 1]`) to maintain in the Droplet Autoscale
  /// [targetNumberInstances] The static number of instances to maintain in the pool Droplet Autoscale pool. This
  const DropletAutoscaleConfig({
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
      cooldownMinutes: (() { final guardedValue = map['cooldownMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      targetCpuUtilization: (() { final guardedValue = map['targetCpuUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      targetMemoryUtilization: (() { final guardedValue = map['targetMemoryUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      targetNumberInstances: (() { final guardedValue = map['targetNumberInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
