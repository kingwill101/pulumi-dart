// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_admin_cluster_iam_policy_args_doc}
/// Arguments for getVmwareAdminClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_admin_cluster_iam_policy_args_doc}
class GetVmwareAdminClusterIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareAdminClusterId;

  /// Creates a new [GetVmwareAdminClusterIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [vmwareAdminClusterId] Required.
  GetVmwareAdminClusterIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.vmwareAdminClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'vmwareAdminClusterId': vmwareAdminClusterId,
    };
  }

  factory GetVmwareAdminClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareAdminClusterIamPolicyArgs(
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      vmwareAdminClusterId: (map['vmwareAdminClusterId'] as String).input(),
    );
  }
}

