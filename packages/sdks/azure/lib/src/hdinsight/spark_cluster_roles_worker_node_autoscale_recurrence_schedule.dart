// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule {
  /// The days of the week to perform autoscale. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<List<String>> days;
  /// The number of worker nodes to autoscale at the specified time.
  final pulumi.Input<int> targetInstanceCount;
  /// The time of day to perform the autoscale in 24hour format.
  final pulumi.Input<String> time;

  /// Creates a new [SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule].
  /// [days] The days of the week to perform autoscale. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  /// [targetInstanceCount] The number of worker nodes to autoscale at the specified time.
  /// [time] The time of day to perform the autoscale in 24hour format.
  const SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule({
    required this.days,
    required this.targetInstanceCount,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'targetInstanceCount': targetInstanceCount,
      'time': time,
    };
  }

  factory SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule(
      days: pulumi.Input.fromValue((map['days'] as List).cast<String>()),
      targetInstanceCount: pulumi.Input.fromValue(map['targetInstanceCount'] as int),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

