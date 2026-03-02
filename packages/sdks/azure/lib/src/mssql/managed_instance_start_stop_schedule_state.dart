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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      managedInstanceId: map['managedInstanceId'] == null ? null : (map['managedInstanceId']! as String).input(),
      nextExecutionTime: map['nextExecutionTime'] == null ? null : (map['nextExecutionTime']! as String).input(),
      nextRunAction: map['nextRunAction'] == null ? null : (map['nextRunAction']! as String).input(),
      schedules: map['schedules'] == null ? null : (pulumi.Input.decodeList<ManagedInstanceStartStopScheduleSchedule>(map['schedules']!, (value) => ManagedInstanceStartStopScheduleSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timezoneId: map['timezoneId'] == null ? null : (map['timezoneId']! as String).input(),
    );
  }
}

