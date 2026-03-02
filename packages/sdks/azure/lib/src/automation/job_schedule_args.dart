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
    required this.automationAccountName,
    this.jobScheduleId,
    this.parameters,
    required this.resourceGroupName,
    this.runOn,
    required this.runbookName,
    required this.scheduleName,
  });

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
      automationAccountName: (map['automationAccountName'] as String).input(),
      jobScheduleId: map['jobScheduleId'] == null ? null : (map['jobScheduleId']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runOn: map['runOn'] == null ? null : (map['runOn']! as String).input(),
      runbookName: (map['runbookName'] as String).input(),
      scheduleName: (map['scheduleName'] as String).input(),
    );
  }
}

