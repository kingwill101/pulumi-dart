// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_autoscaling_policy_iam_policy_args_doc}
/// Arguments for getAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_autoscaling_policy_iam_policy_args_doc}
class GetAutoscalingPolicyIamPolicyArgs {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutoscalingPolicyIamPolicyArgs].
  /// [autoscalingPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAutoscalingPolicyIamPolicyArgs({
    required pulumi.Output<String> autoscalingPolicyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAutoscalingPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyIamPolicyArgs(
      autoscalingPolicyId: pulumi.Output.create<String>(map['autoscalingPolicyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

