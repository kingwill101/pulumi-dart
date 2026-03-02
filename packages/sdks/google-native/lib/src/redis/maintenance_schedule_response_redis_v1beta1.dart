// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.
class MaintenanceScheduleResponseRedisV1beta1 {
  /// If the scheduled maintenance can be rescheduled, default is true.
  final pulumi.Input<bool> canReschedule;
  /// The end time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> endTime;
  /// The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  final pulumi.Input<String> scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> startTime;

  /// Creates a new [MaintenanceScheduleResponseRedisV1beta1].
  /// [canReschedule] If the scheduled maintenance can be rescheduled, default is true.
  /// [endTime] The end time of any upcoming scheduled maintenance for this instance.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  MaintenanceScheduleResponseRedisV1beta1({
    required this.canReschedule,
    required this.endTime,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': canReschedule,
      'endTime': endTime,
      'scheduleDeadlineTime': scheduleDeadlineTime,
      'startTime': startTime,
    };
  }

  factory MaintenanceScheduleResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponseRedisV1beta1(
      canReschedule: (map['canReschedule'] as bool).input(),
      endTime: (map['endTime'] as String).input(),
      scheduleDeadlineTime: (map['scheduleDeadlineTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

