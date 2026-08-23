// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow schedulers.
class SchedulerResourceComposerV1beta1 {
  /// Optional. The number of schedulers.
  final pulumi.Input<int>? count;
  /// Optional. CPU request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? cpu;
  /// Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? memoryGb;
  /// Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [SchedulerResourceComposerV1beta1].
  /// [count] Optional. The number of schedulers.
  /// [cpu] Optional. CPU request and limit for a single Airflow scheduler replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  const SchedulerResourceComposerV1beta1({
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

  factory SchedulerResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return SchedulerResourceComposerV1beta1(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      storageGb: (() { final guardedValue = map['storageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
