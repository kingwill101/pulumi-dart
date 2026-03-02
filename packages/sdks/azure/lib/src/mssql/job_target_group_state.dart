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
    this.jobAgentId,
    this.jobTargets,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentId': ?jobAgentId,
      'jobTargets': ?pulumi.Input.mapOptionalInputValue<List<JobTargetGroupJobTarget>, List<Map<String, dynamic>>>(jobTargets, (value) => pulumi.Input.encodeList<JobTargetGroupJobTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory JobTargetGroupState.fromMap(Map<String, dynamic> map) {
    return JobTargetGroupState(
      jobAgentId: map['jobAgentId'] == null ? null : (map['jobAgentId']! as String).input(),
      jobTargets: map['jobTargets'] == null ? null : (pulumi.Input.decodeList<JobTargetGroupJobTarget>(map['jobTargets']!, (value) => JobTargetGroupJobTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

