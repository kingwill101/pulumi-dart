// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_network_policy_args_doc}
/// Arguments for getNetworkPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_network_policy_args_doc}
class GetNetworkPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> networkPolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkPolicyArgs].
  /// [location] Required.
  /// [networkPolicyId] Required.
  /// [project] Optional.
  const GetNetworkPolicyArgs({
    required this.location,
    required this.networkPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'networkPolicyId': networkPolicyId,
      'project': ?project,
    };
  }

  factory GetNetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      networkPolicyId: pulumi.Input.fromValue(map['networkPolicyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
