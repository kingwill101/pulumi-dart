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
  EnvironmentConfigWorkloadsConfigScheduler({
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
      count: map['count'] == null ? null : (map['count'] as int).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb'] as double).input(),
      storageGb: map['storageGb'] == null ? null : (map['storageGb'] as double).input(),
    );
  }
}

