// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_schedule_monthly_occurrence.dart';

class SoftwareUpdateConfigurationSchedule {
  /// List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  final pulumi.Input<List<int>?>? advancedMonthDays;
  /// List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  final pulumi.Input<List<String>?>? advancedWeekDays;
  final pulumi.Input<String?>? creationTime;
  /// A description for this Schedule.
  final pulumi.Input<String?>? description;
  /// The end time of the schedule.
  final pulumi.Input<String?>? expiryTime;
  /// The time offset in minutes for the expiry time.
  final pulumi.Input<double?>? expiryTimeOffsetMinutes;
  /// The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  final pulumi.Input<String> frequency;
  /// The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month`.
  final pulumi.Input<int?>? interval;
  /// Whether the schedule is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? isEnabled;
  final pulumi.Input<String?>? lastModifiedTime;
  /// List of `monthlyOccurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthlyOccurrence` block supports fields as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationScheduleMonthlyOccurrence?>? monthlyOccurrence;
  final pulumi.Input<String?>? nextRun;
  /// The time offset in minutes for the next run time.
  final pulumi.Input<double?>? nextRunOffsetMinutes;
  /// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  final pulumi.Input<String?>? startTime;
  /// The time offset in minutes for the start time.
  final pulumi.Input<double?>? startTimeOffsetMinutes;
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: &lt;https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows&gt;
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [SoftwareUpdateConfigurationSchedule].
  /// [advancedMonthDays] List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  /// [advancedWeekDays] List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  /// [creationTime] Optional.
  /// [description] A description for this Schedule.
  /// [expiryTime] The end time of the schedule.
  /// [expiryTimeOffsetMinutes] The time offset in minutes for the expiry time.
  /// [frequency] The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  /// [interval] The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month`.
  /// [isEnabled] Whether the schedule is enabled. Defaults to `true`.
  /// [lastModifiedTime] Optional.
  /// [monthlyOccurrence] List of `monthlyOccurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthlyOccurrence` block supports fields as defined below.
  /// [nextRun] Optional.
  /// [nextRunOffsetMinutes] The time offset in minutes for the next run time.
  /// [startTime] Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  /// [startTimeOffsetMinutes] The time offset in minutes for the start time.
  /// [timeZone] The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: &lt;https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows&gt;
  const SoftwareUpdateConfigurationSchedule({
    this.advancedMonthDays,
    this.advancedWeekDays,
    this.creationTime,
    this.description,
    this.expiryTime,
    this.expiryTimeOffsetMinutes,
    required this.frequency,
    this.interval,
    this.isEnabled,
    this.lastModifiedTime,
    this.monthlyOccurrence,
    this.nextRun,
    this.nextRunOffsetMinutes,
    this.startTime,
    this.startTimeOffsetMinutes,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMonthDays': ?advancedMonthDays,
      'advancedWeekDays': ?advancedWeekDays,
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'expiryTimeOffsetMinutes': ?expiryTimeOffsetMinutes,
      'frequency': frequency,
      'interval': ?interval,
      'isEnabled': ?isEnabled,
      'lastModifiedTime': ?lastModifiedTime,
      'monthlyOccurrence': ?pulumi.Input.mapOptionalInputValue<SoftwareUpdateConfigurationScheduleMonthlyOccurrence, Map<String, dynamic>>(monthlyOccurrence, (value) => value.toMap()),
      'nextRun': ?nextRun,
      'nextRunOffsetMinutes': ?nextRunOffsetMinutes,
      'startTime': ?startTime,
      'startTimeOffsetMinutes': ?startTimeOffsetMinutes,
      'timeZone': ?timeZone,
    };
  }

  factory SoftwareUpdateConfigurationSchedule.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationSchedule(
      advancedMonthDays: (() { final guardedValue = map['advancedMonthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      advancedWeekDays: (() { final guardedValue = map['advancedWeekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTimeOffsetMinutes: (() { final guardedValue = map['expiryTimeOffsetMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlyOccurrence: (() { final guardedValue = map['monthlyOccurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftwareUpdateConfigurationScheduleMonthlyOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nextRun: (() { final guardedValue = map['nextRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextRunOffsetMinutes: (() { final guardedValue = map['nextRunOffsetMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeOffsetMinutes: (() { final guardedValue = map['startTimeOffsetMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
