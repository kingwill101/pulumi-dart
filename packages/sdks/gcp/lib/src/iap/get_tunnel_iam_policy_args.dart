// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_tunnel_iam_policy_get_tunnel_iam_policy_args_doc}
/// Arguments for getTunnelIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_tunnel_iam_policy_get_tunnel_iam_policy_args_doc}
class GetTunnelIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetTunnelIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  const GetTunnelIamPolicyArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetTunnelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

