// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_job_schedule_job_schedule_args_doc}
/// The set of arguments for JobSchedule.
/// {@endtemplate}
/// {@macro pulumi_automation_job_schedule_job_schedule_args_doc}
class JobScheduleArgs {
  /// The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The UUID identifying the Automation Job Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? jobScheduleId;
  /// A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The parameter keys/names must strictly be in lowercase, even if this is not the case in the runbook. This is due to a limitation in Azure Automation where the parameter names are normalized. The values specified don't have this limitation.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created.
  final pulumi.Input<String>? runOn;
  /// The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String> runbookName;
  /// The name of the Schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [JobScheduleArgs].
  /// [automationAccountName] The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created.
  /// [jobScheduleId] The UUID identifying the Automation Job Schedule. Changing this forces a new resource to be created.
  /// [parameters] A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created.
  /// [runOn] Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created.
  /// [runbookName] The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created.
  /// [scheduleName] The name of the Schedule. Changing this forces a new resource to be created.
  JobScheduleArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? jobScheduleId,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runOn,
    required pulumi.Output<String> runbookName,
    required pulumi.Output<String> scheduleName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      jobScheduleId = pulumi.Input.asOptionalInput<String>(jobScheduleId),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runOn = pulumi.Input.asOptionalInput<String>(runOn),
      runbookName = pulumi.Input.asInput<String>(runbookName),
      scheduleName = pulumi.Input.asInput<String>(scheduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'jobScheduleId': ?jobScheduleId,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'runOn': ?runOn,
      'runbookName': runbookName,
      'scheduleName': scheduleName,
    };
  }

  factory JobScheduleArgs.fromMap(Map<String, dynamic> map) {
    return JobScheduleArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      jobScheduleId: map['jobScheduleId'] == null ? null : pulumi.Output.create<String>(map['jobScheduleId'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runOn: map['runOn'] == null ? null : pulumi.Output.create<String>(map['runOn'] as String),
      runbookName: pulumi.Output.create<String>(map['runbookName'] as String),
      scheduleName: pulumi.Output.create<String>(map['scheduleName'] as String),
    );
  }
}

