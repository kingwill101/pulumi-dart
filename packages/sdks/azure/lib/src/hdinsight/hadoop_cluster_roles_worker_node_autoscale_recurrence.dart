// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_roles_worker_node_autoscale_recurrence_schedule.dart';

class HadoopClusterRolesWorkerNodeAutoscaleRecurrence {
  /// A list of `schedule` blocks as defined below.
  final pulumi.Input<
    List<HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>
  >
  schedules;

  /// The time zone for the autoscale schedule times.
  final pulumi.Input<String> timezone;

  /// Creates a new [HadoopClusterRolesWorkerNodeAutoscaleRecurrence].
  /// [schedules] A list of `schedule` blocks as defined below.
  /// [timezone] The time zone for the autoscale schedule times.
  HadoopClusterRolesWorkerNodeAutoscaleRecurrence({
    required this.schedules,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedules':
          pulumi.Input.mapInputValue<
            List<HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>,
            List<Map<String, dynamic>>
          >(
            schedules,
            (value) =>
                pulumi.Input.encodeList<
                  HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timezone': timezone,
    };
  }

  factory HadoopClusterRolesWorkerNodeAutoscaleRecurrence.fromMap(
    Map<String, dynamic> map,
  ) {
    return HadoopClusterRolesWorkerNodeAutoscaleRecurrence(
      schedules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule
        >(
          map['schedules']!,
          (value) =>
              HadoopClusterRolesWorkerNodeAutoscaleRecurrenceSchedule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
    );
  }
}
