// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_sql_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value '0.0.0.0' for all Azure-internal IP addresses.
  final pulumi.Input<String>? endIpAddress;
  /// The name of the firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' for all Azure-internal IP addresses.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FirewallRuleArgs].
  /// [endIpAddress] The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value '0.0.0.0' for all Azure-internal IP addresses.
  /// [firewallRuleName] The name of the firewall rule.
  /// [name] Resource name.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [startIpAddress] The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' for all Azure-internal IP addresses.
  FirewallRuleArgs({
    pulumi.Output<String>? endIpAddress,
    pulumi.Output<String>? firewallRuleName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asOptionalInput<String>(endIpAddress),
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      startIpAddress = pulumi.Input.asOptionalInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'firewallRuleName': ?firewallRuleName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIpAddress: map['endIpAddress'] == null ? null : pulumi.Output.create<String>(map['endIpAddress'] as String),
      firewallRuleName: map['firewallRuleName'] == null ? null : pulumi.Output.create<String>(map['firewallRuleName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      startIpAddress: map['startIpAddress'] == null ? null : pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

