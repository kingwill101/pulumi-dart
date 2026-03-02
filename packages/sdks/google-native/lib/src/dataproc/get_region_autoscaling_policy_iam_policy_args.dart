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
    required this.autoscalingPolicyId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionAutoscalingPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalingPolicyIamPolicyArgs(
      autoscalingPolicyId: (map['autoscalingPolicyId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

