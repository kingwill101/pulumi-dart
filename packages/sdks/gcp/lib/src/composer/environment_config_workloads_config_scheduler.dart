// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigWorkloadsConfigScheduler {
  /// The number of schedulers.
  final pulumi.Input<int>? count;
  /// CPU request and limit for a single Airflow scheduler replica
  final pulumi.Input<double>? cpu;
  /// Memory (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? memoryGb;
  /// Storage (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [EnvironmentConfigWorkloadsConfigScheduler].
  /// [count] The number of schedulers.
  /// [cpu] CPU request and limit for a single Airflow scheduler replica
  /// [memoryGb] Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Storage (GB) request and limit for a single Airflow scheduler replica.
  const EnvironmentConfigWorkloadsConfigScheduler({
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

  factory EnvironmentConfigWorkloadsConfigScheduler.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfigScheduler(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      storageGb: (() { final guardedValue = map['storageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
