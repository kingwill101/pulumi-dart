// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_firewall_policy_rule_collection_group_draft_args_doc}
/// Arguments for getFirewallPolicyRuleCollectionGroupDraft.
/// {@endtemplate}
/// {@macro pulumi_network_get_firewall_policy_rule_collection_group_draft_args_doc}
class GetFirewallPolicyRuleCollectionGroupDraftArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the FirewallPolicyRuleCollectionGroup.
  final pulumi.Input<String> ruleCollectionGroupName;

  /// Creates a new [GetFirewallPolicyRuleCollectionGroupDraftArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionGroupName] The name of the FirewallPolicyRuleCollectionGroup.
  GetFirewallPolicyRuleCollectionGroupDraftArgs({
    required pulumi.Output<String> firewallPolicyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleCollectionGroupName,
  }) :
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionGroupName = pulumi.Input.asInput<String>(ruleCollectionGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionGroupName': ruleCollectionGroupName,
    };
  }

  factory GetFirewallPolicyRuleCollectionGroupDraftArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleCollectionGroupDraftArgs(
      firewallPolicyName: pulumi.Output.create<String>(map['firewallPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionGroupName: pulumi.Output.create<String>(map['ruleCollectionGroupName'] as String),
    );
  }
}

