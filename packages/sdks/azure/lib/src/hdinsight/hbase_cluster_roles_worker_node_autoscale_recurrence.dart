// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_roles_worker_node_autoscale_recurrence_schedule.dart';

class HBaseClusterRolesWorkerNodeAutoscaleRecurrence {
  /// A list of `schedule` blocks as defined below.
  final pulumi.Input<List<HBaseClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>> schedules;
  /// The time zone for the autoscale schedule times.
  final pulumi.Input<String> timezone;

  /// Creates a new [HBaseClusterRolesWorkerNodeAutoscaleRecurrence].
  /// [schedules] A list of `schedule` blocks as defined below.
  /// [timezone] The time zone for the autoscale schedule times.
  HBaseClusterRolesWorkerNodeAutoscaleRecurrence({
    required this.schedules,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedules': pulumi.Input.mapInputValue<List<HBaseClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<HBaseClusterRolesWorkerNodeAutoscaleRecurrenceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': timezone,
    };
  }

  factory HBaseClusterRolesWorkerNodeAutoscaleRecurrence.fromMap(Map<String, dynamic> map) {
    return HBaseClusterRolesWorkerNodeAutoscaleRecurrence(
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<HBaseClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>(map['schedules']!, (value) => HBaseClusterRolesWorkerNodeAutoscaleRecurrenceSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
    );
  }
}

