// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow workers.
class WorkerResourceResponse {
  /// Optional. CPU request and limit for a single Airflow worker replica.
  final pulumi.Input<double> cpu;
  /// Optional. Maximum number of workers for autoscaling.
  final pulumi.Input<int> maxCount;
  /// Optional. Memory (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double> memoryGb;
  /// Optional. Minimum number of workers for autoscaling.
  final pulumi.Input<int> minCount;
  /// Optional. Storage (GB) request and limit for a single Airflow worker replica.
  final pulumi.Input<double> storageGb;

  /// Creates a new [WorkerResourceResponse].
  /// [cpu] Optional. CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Optional. Maximum number of workers for autoscaling.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Optional. Minimum number of workers for autoscaling.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow worker replica.
  const WorkerResourceResponse({
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

  factory WorkerResourceResponse.fromMap(Map<String, dynamic> map) {
    return WorkerResourceResponse(
      cpu: pulumi.Input.fromValue((map['cpu'] as num).toDouble()),
      maxCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxCount'])),
      memoryGb: pulumi.Input.fromValue((map['memoryGb'] as num).toDouble()),
      minCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minCount'])),
      storageGb: pulumi.Input.fromValue((map['storageGb'] as num).toDouble()),
    );
  }
}
