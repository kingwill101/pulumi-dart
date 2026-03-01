// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_resource_policy_iam_policy_compute_beta_args_doc}
/// Arguments for getResourcePolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_resource_policy_iam_policy_compute_beta_args_doc}
class GetResourcePolicyIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetResourcePolicyIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetResourcePolicyIamPolicyComputeBetaArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> resource,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'region': region,
      'resource': resource,
    };
  }

  factory GetResourcePolicyIamPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
    );
  }
}

