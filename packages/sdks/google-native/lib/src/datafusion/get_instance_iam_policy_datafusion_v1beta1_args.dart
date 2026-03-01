// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafusion_v1beta1_get_instance_iam_policy_datafusion_v1beta1_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datafusion_v1beta1_get_instance_iam_policy_datafusion_v1beta1_args_doc}
class GetInstanceIamPolicyDatafusionV1beta1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceIamPolicyDatafusionV1beta1Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInstanceIamPolicyDatafusionV1beta1Args({
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetInstanceIamPolicyDatafusionV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyDatafusionV1beta1Args(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

