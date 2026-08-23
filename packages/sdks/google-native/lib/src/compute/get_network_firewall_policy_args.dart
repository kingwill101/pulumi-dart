// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_network_firewall_policy_args_doc}
/// Arguments for getNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_network_firewall_policy_args_doc}
class GetNetworkFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkFirewallPolicyArgs].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  const GetNetworkFirewallPolicyArgs({
    required this.firewallPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
      'project': ?project,
    };
  }

  factory GetNetworkFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyArgs(
      firewallPolicy: pulumi.Input.fromValue(map['firewallPolicy'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
