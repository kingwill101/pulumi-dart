// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_firewall_policy_get_frontdoor_firewall_policy_args_doc}
/// Arguments for getFrontdoorFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_firewall_policy_get_frontdoor_firewall_policy_args_doc}
class GetFrontdoorFirewallPolicyArgs {
  /// The name of the Front Door Firewall Policy.
  final pulumi.Input<String> name;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorFirewallPolicyArgs].
  /// [name] The name of the Front Door Firewall Policy.
  /// [resourceGroupName] The name of the resource group.
  GetFrontdoorFirewallPolicyArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorFirewallPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
