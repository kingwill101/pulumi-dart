// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow workers.
class WorkerResourceComposerV1beta1 {
  /// Optional. CPU request and limit for a single Airflow worker replica.
  final pulumi.Input<double>? cpu;
  /// Optional. Maximum number of workers for autoscaling.
  final pulumi.Input<int>? maxCount;
  /// Optional. Memory (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double>? memoryGb;
  /// Optional. Minimum number of workers for autoscaling.
  final pulumi.Input<int>? minCount;
  /// Optional. Storage (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [WorkerResourceComposerV1beta1].
  /// [cpu] Optional. CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Optional. Maximum number of workers for autoscaling.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Optional. Minimum number of workers for autoscaling.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow worker replica.
  WorkerResourceComposerV1beta1({
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

  factory WorkerResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkerResourceComposerV1beta1(
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount'] as int).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb'] as double).input(),
      minCount: map['minCount'] == null ? null : (map['minCount'] as int).input(),
      storageGb: map['storageGb'] == null ? null : (map['storageGb'] as double).input(),
    );
  }
}

