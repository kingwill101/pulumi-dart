// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_daily_recurrence.dart';
import 'schedule_hourly_recurrence.dart';
import 'schedule_notification_settings.dart';
import 'schedule_weekly_recurrence.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `dailyRecurrence` block as defined below.
  final pulumi.Input<ScheduleDailyRecurrence?>? dailyRecurrence;
  /// The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourlyRecurrence` block as defined below.
  final pulumi.Input<ScheduleHourlyRecurrence?>? hourlyRecurrence;
  /// The name of the dev test lab. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? labName;
  /// The location where the schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the dev test lab schedule. Valid value for name depends on the `taskType`. For instance for taskType `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The notification setting of a schedule. A `notificationSettings` block as defined below.
  final pulumi.Input<ScheduleNotificationSettings?>? notificationSettings;
  /// The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`.
  final pulumi.Input<String?>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`.
  final pulumi.Input<String?>? taskType;
  /// The time zone ID (e.g. Pacific Standard time).
  final pulumi.Input<String?>? timeZoneId;
  /// The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weeklyRecurrence` block as defined below.
  final pulumi.Input<ScheduleWeeklyRecurrence?>? weeklyRecurrence;

  /// Creates a new [ScheduleState].
  /// [dailyRecurrence] The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `dailyRecurrence` block as defined below.
  /// [hourlyRecurrence] The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourlyRecurrence` block as defined below.
  /// [labName] The name of the dev test lab. Changing this forces a new resource to be created.
  /// [location] The location where the schedule is created. Changing this forces a new resource to be created.
  /// [name] The name of the dev test lab schedule. Valid value for name depends on the `taskType`. For instance for taskType `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created.
  /// [notificationSettings] The notification setting of a schedule. A `notificationSettings` block as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created.
  /// [status] The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [taskType] The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`.
  /// [timeZoneId] The time zone ID (e.g. Pacific Standard time).
  /// [weeklyRecurrence] The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weeklyRecurrence` block as defined below.
  const ScheduleState({
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
      dailyRecurrence: (() { final guardedValue = map['dailyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleDailyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hourlyRecurrence: (() { final guardedValue = map['hourlyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleHourlyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labName: (() { final guardedValue = map['labName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskType: (() { final guardedValue = map['taskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyRecurrence: (() { final guardedValue = map['weeklyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleWeeklyRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
