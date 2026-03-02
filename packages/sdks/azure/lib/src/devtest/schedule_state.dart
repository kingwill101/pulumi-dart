// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_daily_recurrence.dart';
import 'schedule_hourly_recurrence.dart';
import 'schedule_notification_settings.dart';
import 'schedule_weekly_recurrence.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `daily_recurrence` block as defined below.
  final pulumi.Input<ScheduleDailyRecurrence>? dailyRecurrence;
  /// The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourly_recurrence` block as defined below.
  final pulumi.Input<ScheduleHourlyRecurrence>? hourlyRecurrence;
  /// The name of the dev test lab. Changing this forces a new resource to be created.
  final pulumi.Input<String>? labName;
  /// The location where the schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the dev test lab schedule. Valid value for name depends on the `task_type`. For instance for task_type `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The notification setting of a schedule. A `notification_settings` block as defined below.
  final pulumi.Input<ScheduleNotificationSettings>? notificationSettings;
  /// The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`.
  final pulumi.Input<String>? taskType;
  /// The time zone ID (e.g. Pacific Standard time).
  final pulumi.Input<String>? timeZoneId;
  /// The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weekly_recurrence` block as defined below.
  final pulumi.Input<ScheduleWeeklyRecurrence>? weeklyRecurrence;

  /// Creates a new [ScheduleState].
  /// [dailyRecurrence] The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `daily_recurrence` block as defined below.
  /// [hourlyRecurrence] The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourly_recurrence` block as defined below.
  /// [labName] The name of the dev test lab. Changing this forces a new resource to be created.
  /// [location] The location where the schedule is created. Changing this forces a new resource to be created.
  /// [name] The name of the dev test lab schedule. Valid value for name depends on the `task_type`. For instance for task_type `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created.
  /// [notificationSettings] The notification setting of a schedule. A `notification_settings` block as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created.
  /// [status] The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [taskType] The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`.
  /// [timeZoneId] The time zone ID (e.g. Pacific Standard time).
  /// [weeklyRecurrence] The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weekly_recurrence` block as defined below.
  ScheduleState({
    this.dailyRecurrence,
    this.hourlyRecurrence,
    this.labName,
    this.location,
    this.name,
    this.notificationSettings,
    this.resourceGroupName,
    this.status,
    this.tags,
    this.taskType,
    this.timeZoneId,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?pulumi.Input.mapOptionalInputValue<ScheduleDailyRecurrence, Map<String, dynamic>>(dailyRecurrence, (value) => value.toMap()),
      'hourlyRecurrence': ?pulumi.Input.mapOptionalInputValue<ScheduleHourlyRecurrence, Map<String, dynamic>>(hourlyRecurrence, (value) => value.toMap()),
      'labName': ?labName,
      'location': ?location,
      'name': ?name,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<ScheduleNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'status': ?status,
      'tags': ?tags,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<ScheduleWeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      dailyRecurrence: map['dailyRecurrence'] == null ? null : (ScheduleDailyRecurrence.fromMap((map['dailyRecurrence'] as Map).cast<String, dynamic>())).input(),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : (ScheduleHourlyRecurrence.fromMap((map['hourlyRecurrence'] as Map).cast<String, dynamic>())).input(),
      labName: map['labName'] == null ? null : (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (ScheduleNotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      taskType: map['taskType'] == null ? null : (map['taskType'] as String).input(),
      timeZoneId: map['timeZoneId'] == null ? null : (map['timeZoneId'] as String).input(),
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : (ScheduleWeeklyRecurrence.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

