// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_node_group_iam_policy_compute_beta_args_doc}
/// Arguments for getNodeGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_node_group_iam_policy_compute_beta_args_doc}
class GetNodeGroupIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodeGroupIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  /// [zone] Required.
  GetNodeGroupIamPolicyComputeBetaArgs({
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

  factory GetNodeGroupIamPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

