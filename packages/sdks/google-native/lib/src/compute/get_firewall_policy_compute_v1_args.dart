// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_firewall_policy_compute_v1_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_firewall_policy_compute_v1_args_doc}
class GetFirewallPolicyComputeV1Args {
  final pulumi.Input<String> firewallPolicy;

  /// Creates a new [GetFirewallPolicyComputeV1Args].
  /// [firewallPolicy] Required.
  GetFirewallPolicyComputeV1Args({
    required this.firewallPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
    };
  }

  factory GetFirewallPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyComputeV1Args(
      firewallPolicy: pulumi.Input.fromValue(map['firewallPolicy'] as String),
    );
  }
}

