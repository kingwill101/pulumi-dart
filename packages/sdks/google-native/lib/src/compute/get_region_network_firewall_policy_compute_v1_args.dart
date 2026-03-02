// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_network_firewall_policy_compute_v1_args_doc}
/// Arguments for getRegionNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_network_firewall_policy_compute_v1_args_doc}
class GetRegionNetworkFirewallPolicyComputeV1Args {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNetworkFirewallPolicyComputeV1Args].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNetworkFirewallPolicyComputeV1Args({
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

  factory GetRegionNetworkFirewallPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyComputeV1Args(
      firewallPolicy: (map['firewallPolicy'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

