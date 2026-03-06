// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow triggerers.
class TriggererResourceResponseComposerV1beta1 {
  /// Optional. The number of triggerers.
  final pulumi.Input<int> count;
  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double> cpu;
  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double> memoryGb;

  /// Creates a new [TriggererResourceResponseComposerV1beta1].
  /// [count] Optional. The number of triggerers.
  /// [cpu] Optional. CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  const TriggererResourceResponseComposerV1beta1({
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

  factory TriggererResourceResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return TriggererResourceResponseComposerV1beta1(
      count: pulumi.Input.fromValue(map['count'] as int),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
    );
  }
}

