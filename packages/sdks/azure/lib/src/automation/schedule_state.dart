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
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
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
  /// [timezone] The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  /// [weekDays] List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  ScheduleState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expiryTime,
    pulumi.Output<String>? frequency,
    pulumi.Output<int>? interval,
    pulumi.Output<List<int>>? monthDays,
    pulumi.Output<ScheduleMonthlyOccurrence>? monthlyOccurrence,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? timezone,
    pulumi.Output<List<String>>? weekDays,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      expiryTime = pulumi.Input.asOptionalInput<String>(expiryTime),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      monthDays = pulumi.Input.asOptionalInput<List<int>>(monthDays),
      monthlyOccurrence = pulumi.Input.asOptionalInput<ScheduleMonthlyOccurrence>(monthlyOccurrence),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      timezone = pulumi.Input.asOptionalInput<String>(timezone),
      weekDays = pulumi.Input.asOptionalInput<List<String>>(weekDays);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expiryTime: map['expiryTime'] == null ? null : pulumi.Output.create<String>(map['expiryTime'] as String),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      monthDays: map['monthDays'] == null ? null : pulumi.Output.create<List<int>>((map['monthDays'] as List).cast<int>()),
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : pulumi.Output.create<ScheduleMonthlyOccurrence>(ScheduleMonthlyOccurrence.fromMap((map['monthlyOccurrence'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      timezone: map['timezone'] == null ? null : pulumi.Output.create<String>(map['timezone'] as String),
      weekDays: map['weekDays'] == null ? null : pulumi.Output.create<List<String>>((map['weekDays'] as List).cast<String>()),
    );
  }
}

