// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_firewall_policy_idps_signatures_filter_value_args_doc}
/// Arguments for listFirewallPolicyIdpsSignaturesFilterValue.
/// {@endtemplate}
/// {@macro pulumi_network_list_firewall_policy_idps_signatures_filter_value_args_doc}
class ListFirewallPolicyIdpsSignaturesFilterValueArgs {
  /// Describes the name of the column which values will be returned
  final pulumi.Input<String>? filterName;

  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListFirewallPolicyIdpsSignaturesFilterValueArgs].
  /// [filterName] Describes the name of the column which values will be returned
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [resourceGroupName] The name of the resource group.
  ListFirewallPolicyIdpsSignaturesFilterValueArgs({
    this.filterName,
    required this.firewallPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterName': ?filterName,
      'firewallPolicyName': firewallPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListFirewallPolicyIdpsSignaturesFilterValueArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListFirewallPolicyIdpsSignaturesFilterValueArgs(
      filterName: (() {
        final guardedValue = map['filterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firewallPolicyName: pulumi.Input.fromValue(
        map['firewallPolicyName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
