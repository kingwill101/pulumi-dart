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
  GetIpFirewallRuleArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIpFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetIpFirewallRuleArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

