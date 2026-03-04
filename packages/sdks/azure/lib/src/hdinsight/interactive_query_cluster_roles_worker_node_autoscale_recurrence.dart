// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_roles_worker_node_autoscale_recurrence_schedule.dart';

class InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence {
  /// A list of `schedule` blocks as defined below.
  final pulumi.Input<
    List<InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrenceSchedule>
  >
  schedules;

  /// The time zone for the autoscale schedule times.
  final pulumi.Input<String> timezone;

  /// Creates a new [InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence].
  /// [schedules] A list of `schedule` blocks as defined below.
  /// [timezone] The time zone for the autoscale schedule times.
  InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence({
    required this.schedules,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedules':
          pulumi.Input.mapInputValue<
            List<
              InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrenceSchedule
            >,
            List<Map<String, dynamic>>
          >(
            schedules,
            (value) =>
                pulumi.Input.encodeList<
                  InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrenceSchedule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timezone': timezone,
    };
  }

  factory InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence.fromMap(
    Map<String, dynamic> map,
  ) {
    return InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence(
      schedules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrenceSchedule
        >(
          map['schedules']!,
          (value) =>
              InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrenceSchedule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
    );
  }
}
