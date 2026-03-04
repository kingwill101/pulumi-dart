// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_recurring_schedule_monthly.dart';
import 'patch_deployment_recurring_schedule_time_of_day.dart';
import 'patch_deployment_recurring_schedule_time_zone.dart';
import 'patch_deployment_recurring_schedule_weekly.dart';

class PatchDeploymentRecurringSchedule {
  /// The end time at which a recurring patch deployment schedule is no longer active.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? endTime;

  /// (Output)
  /// The time the last patch job ran successfully.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? lastExecuteTime;

  /// Schedule with monthly executions.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringScheduleMonthly>? monthly;

  /// (Output)
  /// The time the next patch job is scheduled to run.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? nextExecuteTime;

  /// The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? startTime;

  /// Time of the day to run a recurring deployment.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringScheduleTimeOfDay> timeOfDay;

  /// Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are
  /// determined by the chosen time zone.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringScheduleTimeZone> timeZone;

  /// Schedule with weekly executions.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringScheduleWeekly>? weekly;

  /// Creates a new [PatchDeploymentRecurringSchedule].
  /// [endTime] The end time at which a recurring patch deployment schedule is no longer active.
  /// [lastExecuteTime] (Output)
  /// [monthly] Schedule with monthly executions.
  /// [nextExecuteTime] (Output)
  /// [startTime] The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.
  /// [timeOfDay] Time of the day to run a recurring deployment.
  /// [timeZone] Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are
  /// [weekly] Schedule with weekly executions.
  PatchDeploymentRecurringSchedule({
    this.endTime,
    this.lastExecuteTime,
    this.monthly,
    this.nextExecuteTime,
    this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'lastExecuteTime': ?lastExecuteTime,
      'monthly':
          ?pulumi.Input.mapOptionalInputValue<
            PatchDeploymentRecurringScheduleMonthly,
            Map<String, dynamic>
          >(monthly, (value) => value.toMap()),
      'nextExecuteTime': ?nextExecuteTime,
      'startTime': ?startTime,
      'timeOfDay':
          pulumi.Input.mapInputValue<
            PatchDeploymentRecurringScheduleTimeOfDay,
            Map<String, dynamic>
          >(timeOfDay, (value) => value.toMap()),
      'timeZone':
          pulumi.Input.mapInputValue<
            PatchDeploymentRecurringScheduleTimeZone,
            Map<String, dynamic>
          >(timeZone, (value) => value.toMap()),
      'weekly':
          ?pulumi.Input.mapOptionalInputValue<
            PatchDeploymentRecurringScheduleWeekly,
            Map<String, dynamic>
          >(weekly, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentRecurringSchedule.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRecurringSchedule(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastExecuteTime: (() {
        final guardedValue = map['lastExecuteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monthly: (() {
        final guardedValue = map['monthly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PatchDeploymentRecurringScheduleMonthly.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nextExecuteTime: (() {
        final guardedValue = map['nextExecuteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeOfDay: pulumi.Input.fromValue(
        PatchDeploymentRecurringScheduleTimeOfDay.fromMap(
          (map['timeOfDay']! as Map).cast<String, dynamic>(),
        ),
      ),
      timeZone: pulumi.Input.fromValue(
        PatchDeploymentRecurringScheduleTimeZone.fromMap(
          (map['timeZone']! as Map).cast<String, dynamic>(),
        ),
      ),
      weekly: (() {
        final guardedValue = map['weekly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PatchDeploymentRecurringScheduleWeekly.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
