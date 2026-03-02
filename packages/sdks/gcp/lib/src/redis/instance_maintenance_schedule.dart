// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMaintenanceSchedule {
  /// (Output)
  /// Output only. The end time of any upcoming scheduled maintenance for this instance.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String>? endTime;
  /// (Output)
  /// Output only. The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String>? scheduleDeadlineTime;
  /// (Output)
  /// Output only. The start time of any upcoming scheduled maintenance for this instance.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String>? startTime;

  /// Creates a new [InstanceMaintenanceSchedule].
  /// [endTime] (Output)
  /// [scheduleDeadlineTime] (Output)
  /// [startTime] (Output)
  InstanceMaintenanceSchedule({
    this.endTime,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'scheduleDeadlineTime': ?scheduleDeadlineTime,
      'startTime': ?startTime,
    };
  }

  factory InstanceMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceSchedule(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      scheduleDeadlineTime: map['scheduleDeadlineTime'] == null ? null : (map['scheduleDeadlineTime'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

