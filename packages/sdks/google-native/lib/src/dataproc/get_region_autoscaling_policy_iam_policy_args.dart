// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_autoscaling_policy_iam_policy_args_doc}
/// Arguments for getRegionAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_autoscaling_policy_iam_policy_args_doc}
class GetRegionAutoscalingPolicyIamPolicyArgs {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionAutoscalingPolicyIamPolicyArgs].
  /// [autoscalingPolicyId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionAutoscalingPolicyIamPolicyArgs({
    required pulumi.Output<String> autoscalingPolicyId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> regionId,
  }) :
      autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionAutoscalingPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalingPolicyIamPolicyArgs(
      autoscalingPolicyId: pulumi.Output.create<String>(map['autoscalingPolicyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

