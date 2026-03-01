// ignore_for_file: unused_element, unnecessary_cast


class SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule {
  /// The days of the week to perform autoscale. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final List<String> days;
  /// The number of worker nodes to autoscale at the specified time.
  final int targetInstanceCount;
  /// The time of day to perform the autoscale in 24hour format.
  final String time;

  /// Creates a new [SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule].
  /// [days] The days of the week to perform autoscale. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  /// [targetInstanceCount] The number of worker nodes to autoscale at the specified time.
  /// [time] The time of day to perform the autoscale in 24hour format.
  SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule({
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
      days: (map['days'] as List).cast<String>(),
      targetInstanceCount: map['targetInstanceCount'] as int,
      time: map['time'] as String,
    );
  }
}

