// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow triggerers.
class TriggererResourceResponse {
  /// Optional. The number of triggerers.
  final pulumi.Input<int> count;
  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double> cpu;
  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double> memoryGb;

  /// Creates a new [TriggererResourceResponse].
  /// [count] Optional. The number of triggerers.
  /// [cpu] Optional. CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  const TriggererResourceResponse({
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

  factory TriggererResourceResponse.fromMap(Map<String, dynamic> map) {
    return TriggererResourceResponse(
      count: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['count'])),
      cpu: pulumi.Input.fromValue((map['cpu'] as num).toDouble()),
      memoryGb: pulumi.Input.fromValue((map['memoryGb'] as num).toDouble()),
    );
  }
}
