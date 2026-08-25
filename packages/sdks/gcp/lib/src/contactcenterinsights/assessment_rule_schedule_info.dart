// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssessmentRuleScheduleInfo {
  /// End time of the schedule. If not specified, will keep scheduling new
  /// pipelines for execution until the schedule is no longer active or deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? endTime;
  /// The groc expression.
  /// Format: `every number [synchronized]`
  /// Cron syntax is not supported.
  /// Time units can be: minutes, hours
  /// Synchronized is optional and indicates that the schedule should be
  /// synchronized to the start of the interval: every 5 minutes synchronized
  /// means 00:00, 00:05 ...
  /// Otherwise the start time is random within the interval.
  /// Example: `every 5 minutes`
  /// could be  00:02, 00:07, 00:12, ...
  final pulumi.Input<String?>? schedule;
  /// Start time of the schedule. If not specified, will start as soon as the
  /// schedule is created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? startTime;
  /// The timezone to use for the groc expression.
  /// If not specified, defaults to UTC.
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [AssessmentRuleScheduleInfo].
  /// [endTime] End time of the schedule. If not specified, will keep scheduling new
  /// [schedule] The groc expression.
  /// [startTime] Start time of the schedule. If not specified, will start as soon as the
  /// [timeZone] The timezone to use for the groc expression.
  const AssessmentRuleScheduleInfo({
    this.endTime,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'schedule': ?schedule,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory AssessmentRuleScheduleInfo.fromMap(Map<String, dynamic> map) {
    return AssessmentRuleScheduleInfo(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
