// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_start_stop_managed_instance_schedule_args_doc}
/// Arguments for getStartStopManagedInstanceSchedule.
/// {@endtemplate}
/// {@macro pulumi_sql_get_start_stop_managed_instance_schedule_args_doc}
class GetStartStopManagedInstanceScheduleArgs {
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the managed instance Start/Stop schedule.
  final pulumi.Input<String> startStopScheduleName;

  /// Creates a new [GetStartStopManagedInstanceScheduleArgs].
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [startStopScheduleName] Name of the managed instance Start/Stop schedule.
  GetStartStopManagedInstanceScheduleArgs({
    required pulumi.Output<String> managedInstanceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> startStopScheduleName,
  }) :
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startStopScheduleName = pulumi.Input.asInput<String>(startStopScheduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
      'startStopScheduleName': startStopScheduleName,
    };
  }

  factory GetStartStopManagedInstanceScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetStartStopManagedInstanceScheduleArgs(
      managedInstanceName: pulumi.Output.create<String>(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startStopScheduleName: pulumi.Output.create<String>(map['startStopScheduleName'] as String),
    );
  }
}

