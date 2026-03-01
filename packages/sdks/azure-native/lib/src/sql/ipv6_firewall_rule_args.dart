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
  IPv6FirewallRuleArgs({
    pulumi.Output<String>? endIPv6Address,
    pulumi.Output<String>? firewallRuleName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? startIPv6Address,
  }) :
      endIPv6Address = pulumi.Input.asOptionalInput<String>(endIPv6Address),
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      startIPv6Address = pulumi.Input.asOptionalInput<String>(startIPv6Address);

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
      endIPv6Address: map['endIPv6Address'] == null ? null : pulumi.Output.create<String>(map['endIPv6Address'] as String),
      firewallRuleName: map['firewallRuleName'] == null ? null : pulumi.Output.create<String>(map['firewallRuleName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      startIPv6Address: map['startIPv6Address'] == null ? null : pulumi.Output.create<String>(map['startIPv6Address'] as String),
    );
  }
}

