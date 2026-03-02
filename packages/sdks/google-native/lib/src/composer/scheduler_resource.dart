// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow schedulers.
class SchedulerResource {
  /// Optional. The number of schedulers.
  final pulumi.Input<int>? count;
  /// Optional. CPU request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? cpu;
  /// Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? memoryGb;
  /// Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [SchedulerResource].
  /// [count] Optional. The number of schedulers.
  /// [cpu] Optional. CPU request and limit for a single Airflow scheduler replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  SchedulerResource({
    this.count,
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
      'storageGb': ?storageGb,
    };
  }

  factory SchedulerResource.fromMap(Map<String, dynamic> map) {
    return SchedulerResource(
      count: map['count'] == null ? null : (map['count']! as int).input(),
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb']! as double).input(),
      storageGb: map['storageGb'] == null ? null : (map['storageGb']! as double).input(),
    );
  }
}

