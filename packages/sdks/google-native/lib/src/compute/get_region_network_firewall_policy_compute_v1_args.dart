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
    required pulumi.Output<String> firewallPolicy,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNetworkFirewallPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkFirewallPolicyComputeV1Args(
      firewallPolicy: pulumi.Output.create<String>(map['firewallPolicy'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

