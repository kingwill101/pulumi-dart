// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule {
  /// The days of the week to perform autoscale. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<List<String>> days;
  /// The number of worker nodes to autoscale at the specified time.
  final pulumi.Input<int> targetInstanceCount;
  /// The time of day to perform the autoscale in 24hour format.
  final pulumi.Input<String> time;

  /// Creates a new [HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule].
  /// [days] The days of the week to perform autoscale. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  /// [targetInstanceCount] The number of worker nodes to autoscale at the specified time.
  /// [time] The time of day to perform the autoscale in 24hour format.
  HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule({
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

  factory HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule(
      days: ((map['days'] as List).cast<String>()).input(),
      targetInstanceCount: (map['targetInstanceCount'] as int).input(),
      time: (map['time'] as String).input(),
    );
  }
}

