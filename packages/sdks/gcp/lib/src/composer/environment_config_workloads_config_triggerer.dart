// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigWorkloadsConfigTriggerer {
  /// The number of triggerers.
  final pulumi.Input<int> count;
  /// CPU request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double> cpu;
  /// Memory (GB) request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double> memoryGb;

  /// Creates a new [EnvironmentConfigWorkloadsConfigTriggerer].
  /// [count] The number of triggerers.
  /// [cpu] CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Memory (GB) request and limit for a single Airflow triggerer replica.
  const EnvironmentConfigWorkloadsConfigTriggerer({
    required this.count,
    required this.cpu,
    required this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'cpu': cpu,
      'memoryGb': memoryGb,
    };
  }

  factory EnvironmentConfigWorkloadsConfigTriggerer.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfigTriggerer(
      count: pulumi.Input.fromValue(map['count'] as int),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
    );
  }
}

