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
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.vmwareClusterId,
    required this.vmwareNodePoolId,
  });

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
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      vmwareClusterId: (map['vmwareClusterId'] as String).input(),
      vmwareNodePoolId: (map['vmwareNodePoolId'] as String).input(),
    );
  }
}

