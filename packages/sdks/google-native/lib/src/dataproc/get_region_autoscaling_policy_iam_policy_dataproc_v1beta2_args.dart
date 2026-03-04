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
    required this.autoscalingPolicyId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args(
      autoscalingPolicyId: pulumi.Input.fromValue(
        map['autoscalingPolicyId'] as String,
      ),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
