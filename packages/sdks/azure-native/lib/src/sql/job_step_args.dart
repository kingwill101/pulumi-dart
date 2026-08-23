// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_step_action.dart';
import 'job_step_execution_options.dart';
import 'job_step_output.dart';

/// {@template pulumi_sql_job_step_args_doc}
/// The set of arguments for JobStep.
/// {@endtemplate}
/// {@macro pulumi_sql_job_step_args_doc}
class JobStepArgs {
  /// The action payload of the job step.
  final pulumi.Input<JobStepAction> action;
  /// The resource ID of the job credential that will be used to connect to the targets.
  final pulumi.Input<String>? credential;
  /// Execution options for the job step.
  final pulumi.Input<JobStepExecutionOptions>? executionOptions;
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the job.
  final pulumi.Input<String> jobName;
  /// Output destination properties of the job step.
  final pulumi.Input<JobStepOutput>? output;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  final pulumi.Input<int>? stepId;
  /// The name of the job step.
  final pulumi.Input<String>? stepName;
  /// The resource ID of the target group that the job step will be executed on.
  final pulumi.Input<String> targetGroup;

  /// Creates a new [JobStepArgs].
  /// [action] The action payload of the job step.
  /// [credential] The resource ID of the job credential that will be used to connect to the targets.
  /// [executionOptions] Execution options for the job step.
  /// [jobAgentName] The name of the job agent.
  /// [jobName] The name of the job.
  /// [output] Output destination properties of the job step.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [stepId] The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  /// [stepName] The name of the job step.
  /// [targetGroup] The resource ID of the target group that the job step will be executed on.
  const JobStepArgs({
    required this.action,
    this.credential,
    this.executionOptions,
    required this.jobAgentName,
    required this.jobName,
    this.output,
    required this.resourceGroupName,
    required this.serverName,
    this.stepId,
    this.stepName,
    required this.targetGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<JobStepAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'credential': ?credential,
      'executionOptions': ?pulumi.Input.mapOptionalInputValue<JobStepExecutionOptions, Map<String, dynamic>>(executionOptions, (value) => value.toMap()),
      'jobAgentName': jobAgentName,
      'jobName': jobName,
      'output': ?pulumi.Input.mapOptionalInputValue<JobStepOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'stepId': ?stepId,
      'stepName': ?stepName,
      'targetGroup': targetGroup,
    };
  }

  factory JobStepArgs.fromMap(Map<String, dynamic> map) {
    return JobStepArgs(
      action: pulumi.Input.fromValue(JobStepAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionOptions: (() { final guardedValue = map['executionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobStepExecutionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobAgentName: pulumi.Input.fromValue(map['jobAgentName'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobStepOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      stepId: (() { final guardedValue = map['stepId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stepName: (() { final guardedValue = map['stepName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGroup: pulumi.Input.fromValue(map['targetGroup'] as String),
    );
  }
}
