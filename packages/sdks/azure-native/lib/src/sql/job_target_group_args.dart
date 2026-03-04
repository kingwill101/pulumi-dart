// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target.dart';

/// {@template pulumi_sql_job_target_group_args_doc}
/// The set of arguments for JobTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_job_target_group_args_doc}
class JobTargetGroupArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;

  /// Members of the target group.
  final pulumi.Input<List<JobTarget>> members;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// The name of the target group.
  final pulumi.Input<String>? targetGroupName;

  /// Creates a new [JobTargetGroupArgs].
  /// [jobAgentName] The name of the job agent.
  /// [members] Members of the target group.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [targetGroupName] The name of the target group.
  JobTargetGroupArgs({
    required this.jobAgentName,
    required this.members,
    required this.resourceGroupName,
    required this.serverName,
    this.targetGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'members':
          pulumi
              .Input.mapInputValue<List<JobTarget>, List<Map<String, dynamic>>>(
            members,
            (value) => pulumi.Input.encodeList<JobTarget, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'targetGroupName': ?targetGroupName,
    };
  }

  factory JobTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupArgs(
      jobAgentName: pulumi.Input.fromValue(map['jobAgentName'] as String),
      members: pulumi.Input.fromValue(
        pulumi.Input.decodeList<JobTarget>(
          map['members']!,
          (value) => JobTarget.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      targetGroupName: (() {
        final guardedValue = map['targetGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
