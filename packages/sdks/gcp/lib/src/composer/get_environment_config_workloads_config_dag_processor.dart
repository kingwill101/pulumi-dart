// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigWorkloadsConfigDagProcessor {
  /// Number of DAG processors.
  final pulumi.Input<int> count;
  /// CPU request and limit for DAG processor.
  final pulumi.Input<double> cpu;
  /// Memory (GB) request and limit for DAG processor.
  final pulumi.Input<double> memoryGb;
  /// Storage (GB) request and limit for DAG processor.
  final pulumi.Input<double> storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigDagProcessor].
  /// [count] Number of DAG processors.
  /// [cpu] CPU request and limit for DAG processor.
  /// [memoryGb] Memory (GB) request and limit for DAG processor.
  /// [storageGb] Storage (GB) request and limit for DAG processor.
  const GetEnvironmentConfigWorkloadsConfigDagProcessor({
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

  factory GetEnvironmentConfigWorkloadsConfigDagProcessor.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigDagProcessor(
      count: pulumi.Input.fromValue(map['count'] as int),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      storageGb: pulumi.Input.fromValue(map['storageGb'] as double),
    );
  }
}

