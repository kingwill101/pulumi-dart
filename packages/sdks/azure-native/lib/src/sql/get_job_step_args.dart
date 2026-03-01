// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_step_args_doc}
/// Arguments for getJobStep.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_step_args_doc}
class GetJobStepArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the job.
  final pulumi.Input<String> jobName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the job step.
  final pulumi.Input<String> stepName;

  /// Creates a new [GetJobStepArgs].
  /// [jobAgentName] The name of the job agent.
  /// [jobName] The name of the job.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [stepName] The name of the job step.
  GetJobStepArgs({
    required pulumi.Output<String> jobAgentName,
    required pulumi.Output<String> jobName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> stepName,
  }) :
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      stepName = pulumi.Input.asInput<String>(stepName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'stepName': stepName,
    };
  }

  factory GetJobStepArgs.fromMap(Map<String, dynamic> map) {
    return GetJobStepArgs(
      jobAgentName: pulumi.Output.create<String>(map['jobAgentName'] as String),
      jobName: pulumi.Output.create<String>(map['jobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      stepName: pulumi.Output.create<String>(map['stepName'] as String),
    );
  }
}

