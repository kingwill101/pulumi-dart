// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigWorkloadsConfigDagProcessor {
  /// Number of DAG processors.
  final pulumi.Input<int>? count;
  /// CPU request and limit for DAG processor.
  final pulumi.Input<double>? cpu;
  /// Memory (GB) request and limit for DAG processor.
  final pulumi.Input<double>? memoryGb;
  /// Storage (GB) request and limit for DAG processor.
  final pulumi.Input<double>? storageGb;

  /// Creates a new [EnvironmentConfigWorkloadsConfigDagProcessor].
  /// [count] Number of DAG processors.
  /// [cpu] CPU request and limit for DAG processor.
  /// [memoryGb] Memory (GB) request and limit for DAG processor.
  /// [storageGb] Storage (GB) request and limit for DAG processor.
  EnvironmentConfigWorkloadsConfigDagProcessor({
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

  factory EnvironmentConfigWorkloadsConfigDagProcessor.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfigDagProcessor(
      count: map['count'] == null ? null : (map['count']! as int).input(),
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb']! as double).input(),
      storageGb: map['storageGb'] == null ? null : (map['storageGb']! as double).input(),
    );
  }
}

