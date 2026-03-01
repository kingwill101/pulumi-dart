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
    pulumi.Output<String>? description,
    pulumi.Output<String>? managedInstanceId,
    pulumi.Output<String>? nextExecutionTime,
    pulumi.Output<String>? nextRunAction,
    pulumi.Output<List<ManagedInstanceStartStopScheduleSchedule>>? schedules,
    pulumi.Output<String>? timezoneId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      managedInstanceId = pulumi.Input.asOptionalInput<String>(managedInstanceId),
      nextExecutionTime = pulumi.Input.asOptionalInput<String>(nextExecutionTime),
      nextRunAction = pulumi.Input.asOptionalInput<String>(nextRunAction),
      schedules = pulumi.Input.asOptionalInput<List<ManagedInstanceStartStopScheduleSchedule>>(schedules),
      timezoneId = pulumi.Input.asOptionalInput<String>(timezoneId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      managedInstanceId: map['managedInstanceId'] == null ? null : pulumi.Output.create<String>(map['managedInstanceId'] as String),
      nextExecutionTime: map['nextExecutionTime'] == null ? null : pulumi.Output.create<String>(map['nextExecutionTime'] as String),
      nextRunAction: map['nextRunAction'] == null ? null : pulumi.Output.create<String>(map['nextRunAction'] as String),
      schedules: map['schedules'] == null ? null : pulumi.Output.create<List<ManagedInstanceStartStopScheduleSchedule>>(pulumi.Input.decodeList<ManagedInstanceStartStopScheduleSchedule>(map['schedules'], (value) => ManagedInstanceStartStopScheduleSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timezoneId: map['timezoneId'] == null ? null : pulumi.Output.create<String>(map['timezoneId'] as String),
    );
  }
}

