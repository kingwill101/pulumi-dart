// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_outbound_firewall_rule_args_doc}
/// The set of arguments for OutboundFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_sql_outbound_firewall_rule_args_doc}
class OutboundFirewallRuleArgs {
  final pulumi.Input<String>? outboundRuleFqdn;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [OutboundFirewallRuleArgs].
  /// [outboundRuleFqdn] Optional.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const OutboundFirewallRuleArgs({
    this.outboundRuleFqdn,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundRuleFqdn': ?outboundRuleFqdn,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory OutboundFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return OutboundFirewallRuleArgs(
      outboundRuleFqdn: (() { final guardedValue = map['outboundRuleFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

