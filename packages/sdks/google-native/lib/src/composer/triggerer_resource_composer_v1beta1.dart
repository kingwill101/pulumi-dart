// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for resources used by Airflow triggerers.
class TriggererResourceComposerV1beta1 {
  /// Optional. The number of triggerers.
  final pulumi.Input<int>? count;

  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double>? cpu;

  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final pulumi.Input<double>? memoryGb;

  /// Creates a new [TriggererResourceComposerV1beta1].
  /// [count] Optional. The number of triggerers.
  /// [cpu] Optional. CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  TriggererResourceComposerV1beta1({this.count, this.cpu, this.memoryGb});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
    };
  }

  factory TriggererResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return TriggererResourceComposerV1beta1(
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
    );
  }
}
