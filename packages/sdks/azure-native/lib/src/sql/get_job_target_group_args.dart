// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_target_group_args_doc}
/// Arguments for getJobTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_target_group_args_doc}
class GetJobTargetGroupArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// The name of the target group.
  final pulumi.Input<String> targetGroupName;

  /// Creates a new [GetJobTargetGroupArgs].
  /// [jobAgentName] The name of the job agent.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [targetGroupName] The name of the target group.
  GetJobTargetGroupArgs({
    required this.jobAgentName,
    required this.resourceGroupName,
    required this.serverName,
    required this.targetGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'targetGroupName': targetGroupName,
    };
  }

  factory GetJobTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTargetGroupArgs(
      jobAgentName: pulumi.Input.fromValue(map['jobAgentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      targetGroupName: pulumi.Input.fromValue(map['targetGroupName'] as String),
    );
  }
}
