// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_firewall_policy_compute_beta_args_doc}
/// Arguments for getNetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_firewall_policy_compute_beta_args_doc}
class GetNetworkFirewallPolicyComputeBetaArgs {
  final pulumi.Input<String> firewallPolicy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkFirewallPolicyComputeBetaArgs].
  /// [firewallPolicy] Required.
  /// [project] Optional.
  GetNetworkFirewallPolicyComputeBetaArgs({
    required pulumi.Output<String> firewallPolicy,
    pulumi.Output<String>? project,
  }) :
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
      'project': ?project,
    };
  }

  factory GetNetworkFirewallPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyComputeBetaArgs(
      firewallPolicy: pulumi.Output.create<String>(map['firewallPolicy'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

