// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Upcoming maintenance schedule.
class MaintenanceScheduleResponseMemcacheV1beta2 {
  /// The end time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> endTime;
  /// The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  final pulumi.Input<String> scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this instance.
  final pulumi.Input<String> startTime;

  /// Creates a new [MaintenanceScheduleResponseMemcacheV1beta2].
  /// [endTime] The end time of any upcoming scheduled maintenance for this instance.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  const MaintenanceScheduleResponseMemcacheV1beta2({
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

  factory MaintenanceScheduleResponseMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponseMemcacheV1beta2(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      scheduleDeadlineTime: pulumi.Input.fromValue(map['scheduleDeadlineTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

