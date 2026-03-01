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
  /// One or more `job_target` blocks as defined below.
  final pulumi.Input<List<JobTargetGroupJobTarget>>? jobTargets;
  /// The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [JobTargetGroupArgs].
  /// [jobAgentId] The ID of the Elastic Job Agent. Changing this forces a new Job Target Group to be created.
  /// [jobTargets] One or more `job_target` blocks as defined below.
  /// [name] The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  JobTargetGroupArgs({
    required pulumi.Output<String> jobAgentId,
    pulumi.Output<List<JobTargetGroupJobTarget>>? jobTargets,
    pulumi.Output<String>? name,
  }) :
      jobAgentId = pulumi.Input.asInput<String>(jobAgentId),
      jobTargets = pulumi.Input.asOptionalInput<List<JobTargetGroupJobTarget>>(jobTargets),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentId': jobAgentId,
      'jobTargets': ?pulumi.Input.mapOptionalInputValue<List<JobTargetGroupJobTarget>, List<Map<String, dynamic>>>(jobTargets, (value) => pulumi.Input.encodeList<JobTargetGroupJobTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory JobTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupArgs(
      jobAgentId: pulumi.Output.create<String>(map['jobAgentId'] as String),
      jobTargets: map['jobTargets'] == null ? null : pulumi.Output.create<List<JobTargetGroupJobTarget>>(pulumi.Input.decodeList<JobTargetGroupJobTarget>(map['jobTargets'], (value) => JobTargetGroupJobTarget.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

