// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_outbound_firewall_rule_args_doc}
/// Arguments for getOutboundFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_sql_get_outbound_firewall_rule_args_doc}
class GetOutboundFirewallRuleArgs {
  final pulumi.Input<String> outboundRuleFqdn;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetOutboundFirewallRuleArgs].
  /// [outboundRuleFqdn] Required.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetOutboundFirewallRuleArgs({
    required this.outboundRuleFqdn,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundRuleFqdn': outboundRuleFqdn,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetOutboundFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetOutboundFirewallRuleArgs(
      outboundRuleFqdn: pulumi.Input.fromValue(
        map['outboundRuleFqdn'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
