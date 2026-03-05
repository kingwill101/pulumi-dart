// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_firewall_policy_get_firewall_policy_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_firewall_policy_get_firewall_policy_args_doc}
class GetFirewallPolicyArgs {
  /// The name of this Firewall Policy.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Firewall Policy exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallPolicyArgs].
  /// [name] The name of this Firewall Policy.
  /// [resourceGroupName] The name of the Resource Group where the Firewall Policy exists.
  GetFirewallPolicyArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

