// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_firewall_policy_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_firewall_policy_args_doc}
class GetFirewallPolicyArgs {
  final pulumi.Input<String> firewallPolicy;

  /// Creates a new [GetFirewallPolicyArgs].
  /// [firewallPolicy] Required.
  GetFirewallPolicyArgs({
    required pulumi.Output<String> firewallPolicy,
  }) :
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicy': firewallPolicy,
    };
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      firewallPolicy: pulumi.Output.create<String>(map['firewallPolicy'] as String),
    );
  }
}

