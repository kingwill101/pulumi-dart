// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigWorkloadsConfigScheduler {
  /// The number of schedulers.
  final pulumi.Input<int> count;
  /// CPU request and limit for a single Airflow scheduler replica
  final pulumi.Input<double> cpu;
  /// Memory (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double> memoryGb;
  /// Storage (GB) request and limit for a single Airflow scheduler replica.
  final pulumi.Input<double> storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigScheduler].
  /// [count] The number of schedulers.
  /// [cpu] CPU request and limit for a single Airflow scheduler replica
  /// [memoryGb] Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Storage (GB) request and limit for a single Airflow scheduler replica.
  const GetEnvironmentConfigWorkloadsConfigScheduler({
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

  factory GetEnvironmentConfigWorkloadsConfigScheduler.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigScheduler(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      cpu: pulumi.Input.fromValue((map['cpu'] as num).toDouble()),
      memoryGb: pulumi.Input.fromValue((map['memoryGb'] as num).toDouble()),
      storageGb: pulumi.Input.fromValue((map['storageGb'] as num).toDouble()),
    );
  }
}
