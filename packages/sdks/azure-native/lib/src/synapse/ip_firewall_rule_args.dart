// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_ip_firewall_rule_args_doc}
/// The set of arguments for IpFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_synapse_ip_firewall_rule_args_doc}
class IpFirewallRuleArgs {
  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  final pulumi.Input<String>? endIpAddress;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The IP firewall rule name
  final pulumi.Input<String>? ruleName;
  /// The start IP address of the firewall rule. Must be IPv4 format
  final pulumi.Input<String>? startIpAddress;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IpFirewallRuleArgs].
  /// [endIpAddress] The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The IP firewall rule name
  /// [startIpAddress] The start IP address of the firewall rule. Must be IPv4 format
  /// [workspaceName] The name of the workspace.
  const IpFirewallRuleArgs({
    this.endIpAddress,
    required this.resourceGroupName,
    this.ruleName,
    this.startIpAddress,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'startIpAddress': ?startIpAddress,
      'workspaceName': workspaceName,
    };
  }

  factory IpFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return IpFirewallRuleArgs(
      endIpAddress: (() { final guardedValue = map['endIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIpAddress: (() { final guardedValue = map['startIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

