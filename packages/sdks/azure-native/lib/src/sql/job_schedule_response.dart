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
  JobScheduleResponse({
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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

