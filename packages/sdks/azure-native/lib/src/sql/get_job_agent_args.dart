// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_agent_args_doc}
/// Arguments for getJobAgent.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_agent_args_doc}
class GetJobAgentArgs {
  /// The name of the job agent to be retrieved.
  final pulumi.Input<String> jobAgentName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetJobAgentArgs].
  /// [jobAgentName] The name of the job agent to be retrieved.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetJobAgentArgs({
    required this.jobAgentName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetJobAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetJobAgentArgs(
      jobAgentName: pulumi.Input.fromValue(map['jobAgentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
