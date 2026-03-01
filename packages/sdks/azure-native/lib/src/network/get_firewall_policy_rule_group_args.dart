// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_firewall_policy_rule_group_args_doc}
/// Arguments for getFirewallPolicyRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_firewall_policy_rule_group_args_doc}
class GetFirewallPolicyRuleGroupArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the FirewallPolicyRuleGroup.
  final pulumi.Input<String> ruleGroupName;

  /// Creates a new [GetFirewallPolicyRuleGroupArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleGroupName] The name of the FirewallPolicyRuleGroup.
  GetFirewallPolicyRuleGroupArgs({
    required pulumi.Output<String> firewallPolicyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleGroupName,
  }) :
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleGroupName = pulumi.Input.asInput<String>(ruleGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'resourceGroupName': resourceGroupName,
      'ruleGroupName': ruleGroupName,
    };
  }

  factory GetFirewallPolicyRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleGroupArgs(
      firewallPolicyName: pulumi.Output.create<String>(map['firewallPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleGroupName: pulumi.Output.create<String>(map['ruleGroupName'] as String),
    );
  }
}

