// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigWorkloadsConfigWorker {
  /// CPU request and limit for a single Airflow worker replica.
  final pulumi.Input<double>? cpu;
  /// Maximum number of workers for autoscaling.
  final pulumi.Input<int>? maxCount;
  /// Memory (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double>? memoryGb;
  /// Minimum number of workers for autoscaling.
  final pulumi.Input<int>? minCount;
  /// Storage (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [EnvironmentConfigWorkloadsConfigWorker].
  /// [cpu] CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Maximum number of workers for autoscaling.
  /// [memoryGb] Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Minimum number of workers for autoscaling.
  /// [storageGb] Storage (GB) request and limit for a single Airflow worker replica.
  EnvironmentConfigWorkloadsConfigWorker({
    this.cpu,
    this.maxCount,
    this.memoryGb,
    this.minCount,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'maxCount': ?maxCount,
      'memoryGb': ?memoryGb,
      'minCount': ?minCount,
      'storageGb': ?storageGb,
    };
  }

  factory EnvironmentConfigWorkloadsConfigWorker.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfigWorker(
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount']! as int).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb']! as double).input(),
      minCount: map['minCount'] == null ? null : (map['minCount']! as int).input(),
      storageGb: map['storageGb'] == null ? null : (map['storageGb']! as double).input(),
    );
  }
}

