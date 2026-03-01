// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_cluster_vmware_node_pool_iam_policy_args_doc}
/// Arguments for getVmwareClusterVmwareNodePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_cluster_vmware_node_pool_iam_policy_args_doc}
class GetVmwareClusterVmwareNodePoolIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareClusterId;
  final pulumi.Input<String> vmwareNodePoolId;

  /// Creates a new [GetVmwareClusterVmwareNodePoolIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [vmwareClusterId] Required.
  /// [vmwareNodePoolId] Required.
  GetVmwareClusterVmwareNodePoolIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> vmwareClusterId,
    required pulumi.Output<String> vmwareNodePoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId),
      vmwareNodePoolId = pulumi.Input.asInput<String>(vmwareNodePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'vmwareClusterId': vmwareClusterId,
      'vmwareNodePoolId': vmwareNodePoolId,
    };
  }

  factory GetVmwareClusterVmwareNodePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareClusterVmwareNodePoolIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vmwareClusterId: pulumi.Output.create<String>(map['vmwareClusterId'] as String),
      vmwareNodePoolId: pulumi.Output.create<String>(map['vmwareNodePoolId'] as String),
    );
  }
}

