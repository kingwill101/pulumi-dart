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

  factory EnvironmentConfigWorkloadsConfigDagProcessor.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentConfigWorkloadsConfigDagProcessor(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      memoryGb: (() {
        final guardedValue = map['memoryGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      storageGb: (() {
        final guardedValue = map['storageGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
