// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_item.dart';

/// {@template pulumi_sql_start_stop_managed_instance_schedule_args_doc}
/// The set of arguments for StartStopManagedInstanceSchedule.
/// {@endtemplate}
/// {@macro pulumi_sql_start_stop_managed_instance_schedule_args_doc}
class StartStopManagedInstanceScheduleArgs {
  /// The description of the schedule.
  final pulumi.Input<String>? description;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Schedule list.
  final pulumi.Input<List<ScheduleItem>> scheduleList;
  /// Name of the managed instance Start/Stop schedule.
  final pulumi.Input<String>? startStopScheduleName;
  /// The time zone of the schedule.
  final pulumi.Input<String>? timeZoneId;

  /// Creates a new [StartStopManagedInstanceScheduleArgs].
  /// [description] The description of the schedule.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [scheduleList] Schedule list.
  /// [startStopScheduleName] Name of the managed instance Start/Stop schedule.
  /// [timeZoneId] The time zone of the schedule.
  const StartStopManagedInstanceScheduleArgs({
    this.description,
    required this.managedInstanceName,
    required this.resourceGroupName,
    required this.scheduleList,
    this.startStopScheduleName,
    this.timeZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
      'scheduleList': pulumi.Input.mapInputValue<List<ScheduleItem>, List<Map<String, dynamic>>>(scheduleList, (value) => pulumi.Input.encodeList<ScheduleItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startStopScheduleName': ?startStopScheduleName,
      'timeZoneId': ?timeZoneId,
    };
  }

  factory StartStopManagedInstanceScheduleArgs.fromMap(Map<String, dynamic> map) {
    return StartStopManagedInstanceScheduleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceName: pulumi.Input.fromValue(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleList: pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduleItem>(map['scheduleList']!, (value) => ScheduleItem.fromMap((value as Map).cast<String, dynamic>()))),
      startStopScheduleName: (() { final guardedValue = map['startStopScheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
