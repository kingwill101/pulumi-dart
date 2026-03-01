// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_start_stop_schedule_schedule.dart';

/// {@template pulumi_mssql_managed_instance_start_stop_schedule_managed_instance_start_stop_schedule_args_doc}
/// The set of arguments for ManagedInstanceStartStopSchedule.
/// {@endtemplate}
/// {@macro pulumi_mssql_managed_instance_start_stop_schedule_managed_instance_start_stop_schedule_args_doc}
class ManagedInstanceStartStopScheduleArgs {
  /// Specifies the description of the schedule.
  final pulumi.Input<String>? description;
  /// Specifies the ID of the Managed Instance. Changing this forces a new Sql Start Stop Managed Instance Schedule to be created.
  final pulumi.Input<String> managedInstanceId;
  /// A `schedule` block as defined below.
  final pulumi.Input<List<ManagedInstanceStartStopScheduleSchedule>> schedules;
  /// Specifies the time zone of the schedule. Defaults to `UTC`.
  final pulumi.Input<String>? timezoneId;

  /// Creates a new [ManagedInstanceStartStopScheduleArgs].
  /// [description] Specifies the description of the schedule.
  /// [managedInstanceId] Specifies the ID of the Managed Instance. Changing this forces a new Sql Start Stop Managed Instance Schedule to be created.
  /// [schedules] A `schedule` block as defined below.
  /// [timezoneId] Specifies the time zone of the schedule. Defaults to `UTC`.
  ManagedInstanceStartStopScheduleArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> managedInstanceId,
    required pulumi.Output<List<ManagedInstanceStartStopScheduleSchedule>> schedules,
    pulumi.Output<String>? timezoneId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      managedInstanceId = pulumi.Input.asInput<String>(managedInstanceId),
      schedules = pulumi.Input.asInput<List<ManagedInstanceStartStopScheduleSchedule>>(schedules),
      timezoneId = pulumi.Input.asOptionalInput<String>(timezoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managedInstanceId': managedInstanceId,
      'schedules': pulumi.Input.mapInputValue<List<ManagedInstanceStartStopScheduleSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<ManagedInstanceStartStopScheduleSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezoneId': ?timezoneId,
    };
  }

  factory ManagedInstanceStartStopScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceStartStopScheduleArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      managedInstanceId: pulumi.Output.create<String>(map['managedInstanceId'] as String),
      schedules: pulumi.Output.create<List<ManagedInstanceStartStopScheduleSchedule>>(pulumi.Input.decodeList<ManagedInstanceStartStopScheduleSchedule>(map['schedules'], (value) => ManagedInstanceStartStopScheduleSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timezoneId: map['timezoneId'] == null ? null : pulumi.Output.create<String>(map['timezoneId'] as String),
    );
  }
}

