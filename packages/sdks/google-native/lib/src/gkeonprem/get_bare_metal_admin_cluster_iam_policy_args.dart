// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_iam_policy_args_doc}
/// Arguments for getBareMetalAdminClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_iam_policy_args_doc}
class GetBareMetalAdminClusterIamPolicyArgs {
  final pulumi.Input<String> bareMetalAdminClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBareMetalAdminClusterIamPolicyArgs].
  /// [bareMetalAdminClusterId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetBareMetalAdminClusterIamPolicyArgs({
    required this.bareMetalAdminClusterId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalAdminClusterId': bareMetalAdminClusterId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetBareMetalAdminClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterIamPolicyArgs(
      bareMetalAdminClusterId: pulumi.Input.fromValue(map['bareMetalAdminClusterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
