// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_group_job_target.dart';

/// {@template pulumi_mssql_job_target_group_job_target_group_args_doc}
/// The set of arguments for JobTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_mssql_job_target_group_job_target_group_args_doc}
class JobTargetGroupArgs {
  /// The ID of the Elastic Job Agent. Changing this forces a new Job Target Group to be created.
  final pulumi.Input<String> jobAgentId;
  /// One or more `jobTarget` blocks as defined below.
  final pulumi.Input<List<JobTargetGroupJobTarget>>? jobTargets;
  /// The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [JobTargetGroupArgs].
  /// [jobAgentId] The ID of the Elastic Job Agent. Changing this forces a new Job Target Group to be created.
  /// [jobTargets] One or more `jobTarget` blocks as defined below.
  /// [name] The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  const JobTargetGroupArgs({
    required this.jobAgentId,
    this.jobTargets,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentId': jobAgentId,
      'jobTargets': ?pulumi.Input.mapOptionalInputValue<List<JobTargetGroupJobTarget>, List<Map<String, dynamic>>>(jobTargets, (value) => pulumi.Input.encodeList<JobTargetGroupJobTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory JobTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupArgs(
      jobAgentId: pulumi.Input.fromValue(map['jobAgentId'] as String),
      jobTargets: (() { final guardedValue = map['jobTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTargetGroupJobTarget>(guardedValue, (value) => JobTargetGroupJobTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
