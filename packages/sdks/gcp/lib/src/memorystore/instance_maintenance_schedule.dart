// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMaintenanceSchedule {
  /// (Output)
  /// The end time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String>? endTime;

  /// (Output)
  /// The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String>? scheduleDeadlineTime;

  /// (Output)
  /// The start time of any upcoming scheduled maintenance for this cluster.
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
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduleDeadlineTime: (() {
        final guardedValue = map['scheduleDeadlineTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
