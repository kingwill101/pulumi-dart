// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletAutoscaleConfig {
  /// Cooldown duration
  final pulumi.Input<int> cooldownMinutes;
  /// Max number of members
  final pulumi.Input<int> maxInstances;
  /// Min number of members
  final pulumi.Input<int> minInstances;
  /// CPU target threshold
  final pulumi.Input<double> targetCpuUtilization;
  /// Memory target threshold
  final pulumi.Input<double> targetMemoryUtilization;
  /// Target number of members
  final pulumi.Input<int> targetNumberInstances;

  /// Creates a new [GetDropletAutoscaleConfig].
  /// [cooldownMinutes] Cooldown duration
  /// [maxInstances] Max number of members
  /// [minInstances] Min number of members
  /// [targetCpuUtilization] CPU target threshold
  /// [targetMemoryUtilization] Memory target threshold
  /// [targetNumberInstances] Target number of members
  const GetDropletAutoscaleConfig({
    required this.cooldownMinutes,
    required this.maxInstances,
    required this.minInstances,
    required this.targetCpuUtilization,
    required this.targetMemoryUtilization,
    required this.targetNumberInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownMinutes': cooldownMinutes,
      'maxInstances': maxInstances,
      'minInstances': minInstances,
      'targetCpuUtilization': targetCpuUtilization,
      'targetMemoryUtilization': targetMemoryUtilization,
      'targetNumberInstances': targetNumberInstances,
    };
  }

  factory GetDropletAutoscaleConfig.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleConfig(
      cooldownMinutes: pulumi.Input.fromValue(map['cooldownMinutes'] as int),
      maxInstances: pulumi.Input.fromValue(map['maxInstances'] as int),
      minInstances: pulumi.Input.fromValue(map['minInstances'] as int),
      targetCpuUtilization: pulumi.Input.fromValue(map['targetCpuUtilization'] as double),
      targetMemoryUtilization: pulumi.Input.fromValue(map['targetMemoryUtilization'] as double),
      targetNumberInstances: pulumi.Input.fromValue(map['targetNumberInstances'] as int),
    );
  }
}
