// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Any scheduled maintenance for this instance.
class SqlScheduledMaintenanceResponse {
  final pulumi.Input<bool> canDefer;
  /// If the scheduled maintenance can be rescheduled.
  final pulumi.Input<bool> canReschedule;
  /// Maintenance cannot be rescheduled to start beyond this deadline.
  final pulumi.Input<String> scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> startTime;

  /// Creates a new [SqlScheduledMaintenanceResponse].
  /// [canDefer] Required.
  /// [canReschedule] If the scheduled maintenance can be rescheduled.
  /// [scheduleDeadlineTime] Maintenance cannot be rescheduled to start beyond this deadline.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  const SqlScheduledMaintenanceResponse({
    required this.canDefer,
    required this.canReschedule,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canDefer': canDefer,
      'canReschedule': canReschedule,
      'scheduleDeadlineTime': scheduleDeadlineTime,
      'startTime': startTime,
    };
  }

  factory SqlScheduledMaintenanceResponse.fromMap(Map<String, dynamic> map) {
    return SqlScheduledMaintenanceResponse(
      canDefer: pulumi.Input.fromValue(map['canDefer'] as bool),
      canReschedule: pulumi.Input.fromValue(map['canReschedule'] as bool),
      scheduleDeadlineTime: pulumi.Input.fromValue(map['scheduleDeadlineTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
