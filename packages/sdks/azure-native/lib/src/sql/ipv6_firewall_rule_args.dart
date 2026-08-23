// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_ipv6_firewall_rule_args_doc}
/// The set of arguments for IPv6FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_sql_ipv6_firewall_rule_args_doc}
class IPv6FirewallRuleArgs {
  /// The end IP address of the firewall rule. Must be IPv6 format. Must be greater than or equal to startIpv6Address.
  final pulumi.Input<String>? endIPv6Address;
  /// The name of the firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The start IP address of the firewall rule. Must be IPv6 format.
  final pulumi.Input<String>? startIPv6Address;

  /// Creates a new [IPv6FirewallRuleArgs].
  /// [endIPv6Address] The end IP address of the firewall rule. Must be IPv6 format. Must be greater than or equal to startIpv6Address.
  /// [firewallRuleName] The name of the firewall rule.
  /// [name] Resource name.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [startIPv6Address] The start IP address of the firewall rule. Must be IPv6 format.
  const IPv6FirewallRuleArgs({
    this.endIPv6Address,
    this.firewallRuleName,
    this.name,
    required this.resourceGroupName,
    required this.serverName,
    this.startIPv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIPv6Address': ?endIPv6Address,
      'firewallRuleName': ?firewallRuleName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'startIPv6Address': ?startIPv6Address,
    };
  }

  factory IPv6FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return IPv6FirewallRuleArgs(
      endIPv6Address: (() { final guardedValue = map['endIPv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallRuleName: (() { final guardedValue = map['firewallRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      startIPv6Address: (() { final guardedValue = map['startIPv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
