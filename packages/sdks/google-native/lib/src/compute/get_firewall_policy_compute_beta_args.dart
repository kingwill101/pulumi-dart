// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_firewall_policy_compute_beta_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_firewall_policy_compute_beta_args_doc}
class GetFirewallPolicyComputeBetaArgs {
  final pulumi.Input<String> firewallPolicy;

  /// Creates a new [GetFirewallPolicyComputeBetaArgs].
  /// [firewallPolicy] Required.
  GetFirewallPolicyComputeBetaArgs({required this.firewallPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'firewallPolicy': firewallPolicy};
  }

  factory GetFirewallPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyComputeBetaArgs(
      firewallPolicy: pulumi.Input.fromValue(map['firewallPolicy'] as String),
    );
  }
}
