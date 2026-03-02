// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Upcoming maintenance schedule.
class MaintenanceScheduleResponse {
  /// The end time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> endTime;
  /// The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  final pulumi.Input<String> scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> startTime;

  /// Creates a new [MaintenanceScheduleResponse].
  /// [endTime] The end time of any upcoming scheduled maintenance for this instance.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  MaintenanceScheduleResponse({
    required this.endTime,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'scheduleDeadlineTime': scheduleDeadlineTime,
      'startTime': startTime,
    };
  }

  factory MaintenanceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponse(
      endTime: (map['endTime'] as String).input(),
      scheduleDeadlineTime: (map['scheduleDeadlineTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

