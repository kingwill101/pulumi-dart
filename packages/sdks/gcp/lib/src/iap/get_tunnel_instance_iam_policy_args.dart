// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_tunnel_instance_iam_policy_get_tunnel_instance_iam_policy_args_doc}
/// Arguments for getTunnelInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_tunnel_instance_iam_policy_get_tunnel_instance_iam_policy_args_doc}
class GetTunnelInstanceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? zone;

  /// Creates a new [GetTunnelInstanceIamPolicyArgs].
  /// [instance] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Used to find the parent resource to bind the IAM policy to. If not specified,
  const GetTunnelInstanceIamPolicyArgs({
    required this.instance,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetTunnelInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelInstanceIamPolicyArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
