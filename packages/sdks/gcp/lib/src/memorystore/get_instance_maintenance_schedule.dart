// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMaintenanceSchedule {
  /// The end time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> endTime;
  /// The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetInstanceMaintenanceSchedule].
  /// [endTime] The end time of any upcoming scheduled maintenance for this cluster.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time
  /// [startTime] The start time of any upcoming scheduled maintenance for this cluster.
  const GetInstanceMaintenanceSchedule({
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

  factory GetInstanceMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenanceSchedule(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      scheduleDeadlineTime: pulumi.Input.fromValue(map['scheduleDeadlineTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

