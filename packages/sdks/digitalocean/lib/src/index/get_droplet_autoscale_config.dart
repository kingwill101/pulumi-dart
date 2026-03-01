// ignore_for_file: unused_element, unnecessary_cast


class GetDropletAutoscaleConfig {
  /// Cooldown duration
  final int cooldownMinutes;
  /// Max number of members
  final int maxInstances;
  /// Min number of members
  final int minInstances;
  /// CPU target threshold
  final double targetCpuUtilization;
  /// Memory target threshold
  final double targetMemoryUtilization;
  /// Target number of members
  final int targetNumberInstances;

  /// Creates a new [GetDropletAutoscaleConfig].
  /// [cooldownMinutes] Cooldown duration
  /// [maxInstances] Max number of members
  /// [minInstances] Min number of members
  /// [targetCpuUtilization] CPU target threshold
  /// [targetMemoryUtilization] Memory target threshold
  /// [targetNumberInstances] Target number of members
  GetDropletAutoscaleConfig({
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
      cooldownMinutes: map['cooldownMinutes'] as int,
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      targetCpuUtilization: map['targetCpuUtilization'] as double,
      targetMemoryUtilization: map['targetMemoryUtilization'] as double,
      targetNumberInstances: map['targetNumberInstances'] as int,
    );
  }
}

