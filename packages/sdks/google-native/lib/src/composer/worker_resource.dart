// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow workers.
class WorkerResource {
  /// Optional. CPU request and limit for a single Airflow worker replica.
  final pulumi.Input<double?>? cpu;
  /// Optional. Maximum number of workers for autoscaling.
  final pulumi.Input<int?>? maxCount;
  /// Optional. Memory (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double?>? memoryGb;
  /// Optional. Minimum number of workers for autoscaling.
  final pulumi.Input<int?>? minCount;
  /// Optional. Storage (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double?>? storageGb;

  /// Creates a new [WorkerResource].
  /// [cpu] Optional. CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Optional. Maximum number of workers for autoscaling.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Optional. Minimum number of workers for autoscaling.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow worker replica.
  const WorkerResource({
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

  factory WorkerResource.fromMap(Map<String, dynamic> map) {
    return WorkerResource(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      storageGb: (() { final guardedValue = map['storageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
