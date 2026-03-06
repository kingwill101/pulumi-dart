// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_ip_firewall_rule_args_doc}
/// Arguments for getIpFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_ip_firewall_rule_args_doc}
class GetIpFirewallRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The IP firewall rule name
  final pulumi.Input<String> ruleName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIpFirewallRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The IP firewall rule name
  /// [workspaceName] The name of the workspace.
  const GetIpFirewallRuleArgs({
    required this.resourceGroupName,
    required this.ruleName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIpFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetIpFirewallRuleArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

