// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_group_job_target.dart';

/// Input properties used for looking up and filtering JobTargetGroup resources.
class JobTargetGroupState {
  /// The ID of the Elastic Job Agent. Changing this forces a new Job Target Group to be created.
  final pulumi.Input<String>? jobAgentId;
  /// One or more `job_target` blocks as defined below.
  final pulumi.Input<List<JobTargetGroupJobTarget>>? jobTargets;
  /// The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [JobTargetGroupState].
  /// [jobAgentId] The ID of the Elastic Job Agent. Changing this forces a new Job Target Group to be created.
  /// [jobTargets] One or more `job_target` blocks as defined below.
  /// [name] The name which should be used for this Job Target Group. Changing this forces a new Job Target Group to be created.
  JobTargetGroupState({
    pulumi.Output<String>? jobAgentId,
    pulumi.Output<List<JobTargetGroupJobTarget>>? jobTargets,
    pulumi.Output<String>? name,
  }) :
      jobAgentId = pulumi.Input.asOptionalInput<String>(jobAgentId),
      jobTargets = pulumi.Input.asOptionalInput<List<JobTargetGroupJobTarget>>(jobTargets),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentId': ?jobAgentId,
      'jobTargets': ?pulumi.Input.mapOptionalInputValue<List<JobTargetGroupJobTarget>, List<Map<String, dynamic>>>(jobTargets, (value) => pulumi.Input.encodeList<JobTargetGroupJobTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory JobTargetGroupState.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupState(
      jobAgentId: map['jobAgentId'] == null ? null : pulumi.Output.create<String>(map['jobAgentId'] as String),
      jobTargets: map['jobTargets'] == null ? null : pulumi.Output.create<List<JobTargetGroupJobTarget>>(pulumi.Input.decodeList<JobTargetGroupJobTarget>(map['jobTargets'], (value) => JobTargetGroupJobTarget.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

