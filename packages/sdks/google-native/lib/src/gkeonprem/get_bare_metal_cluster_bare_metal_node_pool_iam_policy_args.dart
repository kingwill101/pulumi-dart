// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args_doc}
/// Arguments for getBareMetalClusterBareMetalNodePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args_doc}
class GetBareMetalClusterBareMetalNodePoolIamPolicyArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> bareMetalNodePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBareMetalClusterBareMetalNodePoolIamPolicyArgs].
  /// [bareMetalClusterId] Required.
  /// [bareMetalNodePoolId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetBareMetalClusterBareMetalNodePoolIamPolicyArgs({
    required pulumi.Output<String> bareMetalClusterId,
    required pulumi.Output<String> bareMetalNodePoolId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
      bareMetalNodePoolId = pulumi.Input.asInput<String>(bareMetalNodePoolId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalClusterId': bareMetalClusterId,
      'bareMetalNodePoolId': bareMetalNodePoolId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetBareMetalClusterBareMetalNodePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterBareMetalNodePoolIamPolicyArgs(
      bareMetalClusterId: pulumi.Output.create<String>(map['bareMetalClusterId'] as String),
      bareMetalNodePoolId: pulumi.Output.create<String>(map['bareMetalNodePoolId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

