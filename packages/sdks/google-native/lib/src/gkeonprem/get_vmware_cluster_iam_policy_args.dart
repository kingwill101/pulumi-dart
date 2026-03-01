// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_cluster_iam_policy_args_doc}
/// Arguments for getVmwareClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_cluster_iam_policy_args_doc}
class GetVmwareClusterIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareClusterId;

  /// Creates a new [GetVmwareClusterIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [vmwareClusterId] Required.
  GetVmwareClusterIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> vmwareClusterId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'vmwareClusterId': vmwareClusterId,
    };
  }

  factory GetVmwareClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareClusterIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vmwareClusterId: pulumi.Output.create<String>(map['vmwareClusterId'] as String),
    );
  }
}

