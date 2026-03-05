// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_start_stop_schedule_schedule.dart';

/// Input properties used for looking up and filtering ManagedInstanceStartStopSchedule resources.
class ManagedInstanceStartStopScheduleState {
  /// Specifies the description of the schedule.
  final pulumi.Input<String>? description;
  /// Specifies the ID of the Managed Instance. Changing this forces a new Sql Start Stop Managed Instance Schedule to be created.
  final pulumi.Input<String>? managedInstanceId;
  /// Timestamp when the next action will be executed in the corresponding schedule time zone.
  final pulumi.Input<String>? nextExecutionTime;
  /// Next action to be executed (Start or Stop).
  final pulumi.Input<String>? nextRunAction;
  /// A `schedule` block as defined below.
  final pulumi.Input<List<ManagedInstanceStartStopScheduleSchedule>>? schedules;
  /// Specifies the time zone of the schedule. Defaults to `UTC`.
  final pulumi.Input<String>? timezoneId;

  /// Creates a new [ManagedInstanceStartStopScheduleState].
  /// [description] Specifies the description of the schedule.
  /// [managedInstanceId] Specifies the ID of the Managed Instance. Changing this forces a new Sql Start Stop Managed Instance Schedule to be created.
  /// [nextExecutionTime] Timestamp when the next action will be executed in the corresponding schedule time zone.
  /// [nextRunAction] Next action to be executed (Start or Stop).
  /// [schedules] A `schedule` block as defined below.
  /// [timezoneId] Specifies the time zone of the schedule. Defaults to `UTC`.
  ManagedInstanceStartStopScheduleState({
    this.description,
    this.managedInstanceId,
    this.nextExecutionTime,
    this.nextRunAction,
    this.schedules,
    this.timezoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managedInstanceId': ?managedInstanceId,
      'nextExecutionTime': ?nextExecutionTime,
      'nextRunAction': ?nextRunAction,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedInstanceStartStopScheduleSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<ManagedInstanceStartStopScheduleSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezoneId': ?timezoneId,
    };
  }

  factory ManagedInstanceStartStopScheduleState.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceStartStopScheduleState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceId: (() { final guardedValue = map['managedInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextExecutionTime: (() { final guardedValue = map['nextExecutionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextRunAction: (() { final guardedValue = map['nextRunAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedInstanceStartStopScheduleSchedule>(guardedValue, (value) => ManagedInstanceStartStopScheduleSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timezoneId: (() { final guardedValue = map['timezoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

