// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args].
  /// [autoscalingPolicyId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args({
    required pulumi.Output<String> autoscalingPolicyId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> regionId,
  }) :
      autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args(
      autoscalingPolicyId: pulumi.Output.create<String>(map['autoscalingPolicyId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

