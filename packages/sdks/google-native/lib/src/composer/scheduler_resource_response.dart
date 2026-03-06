// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow schedulers.
class SchedulerResourceResponse {
  /// Optional. The number of schedulers.
  final pulumi.Input<int> count;
  /// Optional. CPU request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double> cpu;
  /// Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double> memoryGb;
  /// Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double> storageGb;

  /// Creates a new [SchedulerResourceResponse].
  /// [count] Optional. The number of schedulers.
  /// [cpu] Optional. CPU request and limit for a single Airflow scheduler replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  const SchedulerResourceResponse({
    required this.count,
    required this.cpu,
    required this.memoryGb,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'cpu': cpu,
      'memoryGb': memoryGb,
      'storageGb': storageGb,
    };
  }

  factory SchedulerResourceResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerResourceResponse(
      count: pulumi.Input.fromValue(map['count'] as int),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      storageGb: pulumi.Input.fromValue(map['storageGb'] as double),
    );
  }
}

