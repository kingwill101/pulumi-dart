// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Any scheduled maintenance for this instance.
class SqlScheduledMaintenanceSqladminV1beta4 {
  final pulumi.Input<bool>? canDefer;
  /// If the scheduled maintenance can be rescheduled.
  final pulumi.Input<bool>? canReschedule;
  /// Maintenance cannot be rescheduled to start beyond this deadline.
  final pulumi.Input<String>? scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String>? startTime;

  /// Creates a new [SqlScheduledMaintenanceSqladminV1beta4].
  /// [canDefer] Optional.
  /// [canReschedule] If the scheduled maintenance can be rescheduled.
  /// [scheduleDeadlineTime] Maintenance cannot be rescheduled to start beyond this deadline.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  const SqlScheduledMaintenanceSqladminV1beta4({
    this.canDefer,
    this.canReschedule,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canDefer': ?canDefer,
      'canReschedule': ?canReschedule,
      'scheduleDeadlineTime': ?scheduleDeadlineTime,
      'startTime': ?startTime,
    };
  }

  factory SqlScheduledMaintenanceSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlScheduledMaintenanceSqladminV1beta4(
      canDefer: (() { final guardedValue = map['canDefer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      canReschedule: (() { final guardedValue = map['canReschedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheduleDeadlineTime: (() { final guardedValue = map['scheduleDeadlineTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
