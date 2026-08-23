// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheduling properties of a job.
class JobScheduleResponse {
  /// Whether or not the schedule is enabled.
  final pulumi.Input<bool>? enabled;
  /// Schedule end time.
  final pulumi.Input<String>? endTime;
  /// Value of the schedule's recurring interval, if the ScheduleType is recurring. ISO8601 duration format.
  final pulumi.Input<String>? interval;
  /// Schedule start time.
  final pulumi.Input<String>? startTime;
  /// Schedule interval type
  final pulumi.Input<String>? type;

  /// Creates a new [JobScheduleResponse].
  /// [enabled] Whether or not the schedule is enabled.
  /// [endTime] Schedule end time.
  /// [interval] Value of the schedule's recurring interval, if the ScheduleType is recurring. ISO8601 duration format.
  /// [startTime] Schedule start time.
  /// [type] Schedule interval type
  const JobScheduleResponse({
    this.enabled,
    this.endTime,
    this.interval,
    this.startTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endTime': ?endTime,
      'interval': ?interval,
      'startTime': ?startTime,
      'type': ?type,
    };
  }

  factory JobScheduleResponse.fromMap(Map<String, dynamic> map) {
    return JobScheduleResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
