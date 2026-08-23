// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobSchedule resources.
class JobScheduleState {
  /// The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The UUID identifying the Automation Job Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? jobScheduleId;
  /// A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The parameter keys/names must strictly be in lowercase, even if this is not the case in the runbook. This is due to a limitation in Azure Automation where the parameter names are normalized. The values specified don't have this limitation.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Resource Manager ID of the Automation Job Schedule.
  final pulumi.Input<String>? resourceManagerId;
  /// Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created.
  final pulumi.Input<String>? runOn;
  /// The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? runbookName;
  /// The name of the Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scheduleName;

  /// Creates a new [JobScheduleState].
  /// [automationAccountName] The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created.
  /// [jobScheduleId] The UUID identifying the Automation Job Schedule. Changing this forces a new resource to be created.
  /// [parameters] A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created.
  /// [resourceManagerId] The Resource Manager ID of the Automation Job Schedule.
  /// [runOn] Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created.
  /// [runbookName] The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created.
  /// [scheduleName] The name of the Schedule. Changing this forces a new resource to be created.
  const JobScheduleState({
    this.automationAccountName,
    this.jobScheduleId,
    this.parameters,
    this.resourceGroupName,
    this.resourceManagerId,
    this.runOn,
    this.runbookName,
    this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'jobScheduleId': ?jobScheduleId,
      'parameters': ?parameters,
      'resourceGroupName': ?resourceGroupName,
      'resourceManagerId': ?resourceManagerId,
      'runOn': ?runOn,
      'runbookName': ?runbookName,
      'scheduleName': ?scheduleName,
    };
  }

  factory JobScheduleState.fromMap(Map<String, dynamic> map) {
    return JobScheduleState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobScheduleId: (() { final guardedValue = map['jobScheduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceManagerId: (() { final guardedValue = map['resourceManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runOn: (() { final guardedValue = map['runOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookName: (() { final guardedValue = map['runbookName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
