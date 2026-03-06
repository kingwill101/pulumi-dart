// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_monthly_occurrence.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// A description for this Schedule.
  final pulumi.Input<String>? description;
  /// The end time of the schedule.
  final pulumi.Input<String>? expiryTime;
  /// The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  final pulumi.Input<String>? frequency;
  /// The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month` and defaults to `1`.
  final pulumi.Input<int>? interval;
  /// List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  final pulumi.Input<List<int>>? monthDays;
  /// One `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields documented below.
  final pulumi.Input<ScheduleMonthlyOccurrence>? monthlyOccurrence;
  /// Specifies the name of the Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  final pulumi.Input<String>? startTime;
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: &lt;https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows&gt;
  final pulumi.Input<String>? timezone;
  /// List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [ScheduleState].
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
  /// [timezone] The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: &lt;https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows&gt;
  /// [weekDays] List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  const ScheduleState({
    this.automationAccountName,
    this.description,
    this.expiryTime,
    this.frequency,
    this.interval,
    this.monthDays,
    this.monthlyOccurrence,
    this.name,
    this.resourceGroupName,
    this.startTime,
    this.timezone,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'frequency': ?frequency,
      'interval': ?interval,
      'monthDays': ?monthDays,
      'monthlyOccurrence': ?pulumi.Input.mapOptionalInputValue<ScheduleMonthlyOccurrence, Map<String, dynamic>>(monthlyOccurrence, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'startTime': ?startTime,
      'timezone': ?timezone,
      'weekDays': ?weekDays,
    };
  }

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monthDays: (() { final guardedValue = map['monthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthlyOccurrence: (() { final guardedValue = map['monthlyOccurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleMonthlyOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

