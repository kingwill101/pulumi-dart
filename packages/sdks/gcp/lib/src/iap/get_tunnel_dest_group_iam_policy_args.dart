// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_tunnel_dest_group_iam_policy_get_tunnel_dest_group_iam_policy_args_doc}
/// Arguments for getTunnelDestGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_tunnel_dest_group_iam_policy_get_tunnel_dest_group_iam_policy_args_doc}
class GetTunnelDestGroupIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> destGroup;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the tunnel group. Must be the same as the network resources in the group.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetTunnelDestGroupIamPolicyArgs].
  /// [destGroup] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tunnel group. Must be the same as the network resources in the group.
  GetTunnelDestGroupIamPolicyArgs({
    required this.destGroup,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destGroup': destGroup,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetTunnelDestGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelDestGroupIamPolicyArgs(
      destGroup: pulumi.Input.fromValue(map['destGroup'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
