// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_network_firewall_policy_args_doc}
/// Arguments for getRegionNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_network_firewall_policy_args_doc}
class GetRegionNetworkFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNetworkFirewallPolicyArgs].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNetworkFirewallPolicyArgs({
    required this.firewallPolicy,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNetworkFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyArgs(
      firewallPolicy: pulumi.Input.fromValue(map['firewallPolicy'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
