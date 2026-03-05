// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_cluster_roles_worker_node_autoscale_recurrence_schedule.dart';

class SparkClusterRolesWorkerNodeAutoscaleRecurrence {
  /// A list of `schedule` blocks as defined below.
  final pulumi.Input<List<SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>> schedules;
  /// The time zone for the autoscale schedule times.
  final pulumi.Input<String> timezone;

  /// Creates a new [SparkClusterRolesWorkerNodeAutoscaleRecurrence].
  /// [schedules] A list of `schedule` blocks as defined below.
  /// [timezone] The time zone for the autoscale schedule times.
  SparkClusterRolesWorkerNodeAutoscaleRecurrence({
    required this.schedules,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedules': pulumi.Input.mapInputValue<List<SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': timezone,
    };
  }

  factory SparkClusterRolesWorkerNodeAutoscaleRecurrence.fromMap(Map<String, dynamic> map) {
    return SparkClusterRolesWorkerNodeAutoscaleRecurrence(
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>(map['schedules']!, (value) => SparkClusterRolesWorkerNodeAutoscaleRecurrenceSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
    );
  }
}

