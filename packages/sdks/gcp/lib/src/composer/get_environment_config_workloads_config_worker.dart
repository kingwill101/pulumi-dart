// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigWorkloadsConfigWorker {
  /// CPU request and limit for a single Airflow worker replica.
  final pulumi.Input<double> cpu;
  /// Maximum number of workers for autoscaling.
  final pulumi.Input<int> maxCount;
  /// Memory (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double> memoryGb;
  /// Minimum number of workers for autoscaling.
  final pulumi.Input<int> minCount;
  /// Storage (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double> storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigWorker].
  /// [cpu] CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Maximum number of workers for autoscaling.
  /// [memoryGb] Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Minimum number of workers for autoscaling.
  /// [storageGb] Storage (GB) request and limit for a single Airflow worker replica.
  const GetEnvironmentConfigWorkloadsConfigWorker({
    required this.cpu,
    required this.maxCount,
    required this.memoryGb,
    required this.minCount,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'maxCount': maxCount,
      'memoryGb': memoryGb,
      'minCount': minCount,
      'storageGb': storageGb,
    };
  }

  factory GetEnvironmentConfigWorkloadsConfigWorker.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigWorker(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      maxCount: pulumi.Input.fromValue(map['maxCount'] as int),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      minCount: pulumi.Input.fromValue(map['minCount'] as int),
      storageGb: pulumi.Input.fromValue(map['storageGb'] as double),
    );
  }
}
