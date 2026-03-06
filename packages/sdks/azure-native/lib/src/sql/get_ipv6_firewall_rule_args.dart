// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_ipv6_firewall_rule_args_doc}
/// Arguments for getIPv6FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_sql_get_ipv6_firewall_rule_args_doc}
class GetIPv6FirewallRuleArgs {
  /// The name of the firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetIPv6FirewallRuleArgs].
  /// [firewallRuleName] The name of the firewall rule.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetIPv6FirewallRuleArgs({
    required this.firewallRuleName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': firewallRuleName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetIPv6FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetIPv6FirewallRuleArgs(
      firewallRuleName: pulumi.Input.fromValue(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

