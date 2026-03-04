// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenanceSchedule {
  /// Output only. The end time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> endTime;

  /// Output only. The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> scheduleDeadlineTime;

  /// Output only. The start time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetClusterMaintenanceSchedule].
  /// [endTime] Output only. The end time of any upcoming scheduled maintenance for this cluster.
  /// [scheduleDeadlineTime] Output only. The deadline that the maintenance schedule start time
  /// [startTime] Output only. The start time of any upcoming scheduled maintenance for this cluster.
  GetClusterMaintenanceSchedule({
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

  factory GetClusterMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenanceSchedule(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      scheduleDeadlineTime: pulumi.Input.fromValue(
        map['scheduleDeadlineTime'] as String,
      ),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
