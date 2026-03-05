// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule.dart';

/// {@template pulumi_network_firewall_policy_rule_group_args_doc}
/// The set of arguments for FirewallPolicyRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_group_args_doc}
class FirewallPolicyRuleGroupArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule Group resource.
  final pulumi.Input<int>? priority;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the FirewallPolicyRuleGroup.
  final pulumi.Input<String>? ruleGroupName;
  /// Group of Firewall Policy rules.
  final pulumi.Input<List<FirewallPolicyFilterRule>>? rules;

  /// Creates a new [FirewallPolicyRuleGroupArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Group resource.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleGroupName] The name of the FirewallPolicyRuleGroup.
  /// [rules] Group of Firewall Policy rules.
  FirewallPolicyRuleGroupArgs({
    required this.firewallPolicyName,
    this.id,
    this.name,
    this.priority,
    required this.resourceGroupName,
    this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'ruleGroupName': ?ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyFilterRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyFilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleGroupArgs(
      firewallPolicyName: pulumi.Input.fromValue(map['firewallPolicyName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleGroupName: (() { final guardedValue = map['ruleGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyFilterRule>(guardedValue, (value) => FirewallPolicyFilterRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

