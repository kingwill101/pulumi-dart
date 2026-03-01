// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_delivery_pipeline_iam_policy_args_doc}
/// Arguments for getDeliveryPipelineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_delivery_pipeline_iam_policy_args_doc}
class GetDeliveryPipelineIamPolicyArgs {
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeliveryPipelineIamPolicyArgs].
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDeliveryPipelineIamPolicyArgs({
    required pulumi.Output<String> deliveryPipelineId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryPipelineId': deliveryPipelineId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDeliveryPipelineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDeliveryPipelineIamPolicyArgs(
      deliveryPipelineId: pulumi.Output.create<String>(map['deliveryPipelineId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

