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
    this.description,
    required this.managedInstanceId,
    required this.schedules,
    this.timezoneId,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceId: pulumi.Input.fromValue(map['managedInstanceId'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedInstanceStartStopScheduleSchedule>(map['schedules']!, (value) => ManagedInstanceStartStopScheduleSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timezoneId: (() { final guardedValue = map['timezoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

