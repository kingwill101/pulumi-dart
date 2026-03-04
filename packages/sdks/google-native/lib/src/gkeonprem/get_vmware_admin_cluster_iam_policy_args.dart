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
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmwareAdminClusterId: pulumi.Input.fromValue(
        map['vmwareAdminClusterId'] as String,
      ),
    );
  }
}
