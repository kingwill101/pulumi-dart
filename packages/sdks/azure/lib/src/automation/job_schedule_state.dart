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
  /// > **Note:** The parameter keys/names must strictly be in lowercase, even if this is not the case in the runbook. This is due to a limitation in Azure Automation where the parameter names are normalized. The values specified don't have this limitation.
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
  JobScheduleState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? jobScheduleId,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? resourceManagerId,
    pulumi.Output<String>? runOn,
    pulumi.Output<String>? runbookName,
    pulumi.Output<String>? scheduleName,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      jobScheduleId = pulumi.Input.asOptionalInput<String>(jobScheduleId),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      resourceManagerId = pulumi.Input.asOptionalInput<String>(resourceManagerId),
      runOn = pulumi.Input.asOptionalInput<String>(runOn),
      runbookName = pulumi.Input.asOptionalInput<String>(runbookName),
      scheduleName = pulumi.Input.asOptionalInput<String>(scheduleName);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      jobScheduleId: map['jobScheduleId'] == null ? null : pulumi.Output.create<String>(map['jobScheduleId'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceManagerId: map['resourceManagerId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerId'] as String),
      runOn: map['runOn'] == null ? null : pulumi.Output.create<String>(map['runOn'] as String),
      runbookName: map['runbookName'] == null ? null : pulumi.Output.create<String>(map['runbookName'] as String),
      scheduleName: map['scheduleName'] == null ? null : pulumi.Output.create<String>(map['scheduleName'] as String),
    );
  }
}

