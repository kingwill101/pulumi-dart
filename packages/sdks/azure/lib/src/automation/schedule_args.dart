// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_monthly_occurrence.dart';

/// {@template pulumi_automation_schedule_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_automation_schedule_schedule_args_doc}
class ScheduleArgs {
  /// The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// A description for this Schedule.
  final pulumi.Input<String>? description;
  /// The end time of the schedule.
  final pulumi.Input<String>? expiryTime;
  /// The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  final pulumi.Input<String> frequency;
  /// The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month` and defaults to `1`.
  final pulumi.Input<int>? interval;
  /// List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  final pulumi.Input<List<int>>? monthDays;
  /// One `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields documented below.
  final pulumi.Input<ScheduleMonthlyOccurrence>? monthlyOccurrence;
  /// Specifies the name of the Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  final pulumi.Input<String>? startTime;
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  final pulumi.Input<String>? timezone;
  /// List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [ScheduleArgs].
  /// [automationAccountName] The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created.
  /// [description] A description for this Schedule.
  /// [expiryTime] The end time of the schedule.
  /// [frequency] The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  /// [interval] The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month` and defaults to `1`.
  /// [monthDays] List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  /// [monthlyOccurrence] One `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields documented below.
  /// [name] Specifies the name of the Schedule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created.
  /// [startTime] Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  /// [timezone] The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  /// [weekDays] List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  ScheduleArgs({
    required this.automationAccountName,
    this.description,
    this.expiryTime,
    required this.frequency,
    this.interval,
    this.monthDays,
    this.monthlyOccurrence,
    this.name,
    required this.resourceGroupName,
    this.startTime,
    this.timezone,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'frequency': frequency,
      'interval': ?interval,
      'monthDays': ?monthDays,
      'monthlyOccurrence': ?pulumi.Input.mapOptionalInputValue<ScheduleMonthlyOccurrence, Map<String, dynamic>>(monthlyOccurrence, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'startTime': ?startTime,
      'timezone': ?timezone,
      'weekDays': ?weekDays,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime']! as String).input(),
      frequency: (map['frequency'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      monthDays: map['monthDays'] == null ? null : ((map['monthDays']! as List).cast<int>()).input(),
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : (ScheduleMonthlyOccurrence.fromMap((map['monthlyOccurrence']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
      weekDays: map['weekDays'] == null ? null : ((map['weekDays']! as List).cast<String>()).input(),
    );
  }
}

