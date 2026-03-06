// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineScheduleInfo {
  /// (Output)
  /// When the next Scheduler job is going to run.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? nextJobTime;
  /// Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  final pulumi.Input<String>? schedule;
  /// Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [PipelineScheduleInfo].
  /// [nextJobTime] (Output)
  /// [schedule] Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  /// [timeZone] Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  const PipelineScheduleInfo({
    this.nextJobTime,
    this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextJobTime': ?nextJobTime,
      'schedule': ?schedule,
      'timeZone': ?timeZone,
    };
  }

  factory PipelineScheduleInfo.fromMap(Map<String, dynamic> map) {
    return PipelineScheduleInfo(
      nextJobTime: (() { final guardedValue = map['nextJobTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

