// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_schedule_monthly_occurrence.dart';

class SoftwareUpdateConfigurationSchedule {
  /// List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  final pulumi.Input<List<int>>? advancedMonthDays;
  /// List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  final pulumi.Input<List<String>>? advancedWeekDays;
  final pulumi.Input<String>? creationTime;
  /// A description for this Schedule.
  final pulumi.Input<String>? description;
  /// The end time of the schedule.
  final pulumi.Input<String>? expiryTime;
  /// The time offset in minutes for the expiry time.
  final pulumi.Input<double>? expiryTimeOffsetMinutes;
  /// The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  final pulumi.Input<String> frequency;
  /// The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month`.
  final pulumi.Input<int>? interval;
  /// Whether the schedule is enabled. Defaults to `true`.
  final pulumi.Input<bool>? isEnabled;
  final pulumi.Input<String>? lastModifiedTime;
  /// List of `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields as defined below.
  final pulumi.Input<SoftwareUpdateConfigurationScheduleMonthlyOccurrence>? monthlyOccurrence;
  final pulumi.Input<String>? nextRun;
  /// The time offset in minutes for the next run time.
  final pulumi.Input<double>? nextRunOffsetMinutes;
  /// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  final pulumi.Input<String>? startTime;
  /// The time offset in minutes for the start time.
  final pulumi.Input<double>? startTimeOffsetMinutes;
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  final pulumi.Input<String>? timeZone;

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
  /// [monthlyOccurrence] List of `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields as defined below.
  /// [nextRun] Optional.
  /// [nextRunOffsetMinutes] The time offset in minutes for the next run time.
  /// [startTime] Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  /// [startTimeOffsetMinutes] The time offset in minutes for the start time.
  /// [timeZone] The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  SoftwareUpdateConfigurationSchedule({
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
      advancedMonthDays: map['advancedMonthDays'] == null ? null : ((map['advancedMonthDays'] as List).cast<int>()).input(),
      advancedWeekDays: map['advancedWeekDays'] == null ? null : ((map['advancedWeekDays'] as List).cast<String>()).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      expiryTimeOffsetMinutes: map['expiryTimeOffsetMinutes'] == null ? null : (map['expiryTimeOffsetMinutes'] as double).input(),
      frequency: (map['frequency'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled'] as bool).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : (SoftwareUpdateConfigurationScheduleMonthlyOccurrence.fromMap((map['monthlyOccurrence'] as Map).cast<String, dynamic>())).input(),
      nextRun: map['nextRun'] == null ? null : (map['nextRun'] as String).input(),
      nextRunOffsetMinutes: map['nextRunOffsetMinutes'] == null ? null : (map['nextRunOffsetMinutes'] as double).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      startTimeOffsetMinutes: map['startTimeOffsetMinutes'] == null ? null : (map['startTimeOffsetMinutes'] as double).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

