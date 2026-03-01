// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_instance_iam_policy_compute_v1_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_instance_iam_policy_compute_v1_args_doc}
class GetInstanceIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  /// [zone] Required.
  GetInstanceIamPolicyComputeV1Args({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> resource,
    required pulumi.Output<String> zone,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      resource = pulumi.Input.asInput<String>(resource),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'resource': resource,
      'zone': zone,
    };
  }

  factory GetInstanceIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

