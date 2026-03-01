// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_nat_rule_collection_rule.dart';

class FirewallPolicyRuleCollectionGroupNatRuleCollection {
  /// The action to take for the NAT rules in this collection. Currently, the only possible value is `Dnat`.
  final String action;
  /// The name which should be used for this NAT rule collection.
  final String name;
  /// The priority of the NAT rule collection. The range is `100` - `65000`.
  final int priority;
  /// A `nat_rule` block as defined below.
  final List<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule> rules;

  /// Creates a new [FirewallPolicyRuleCollectionGroupNatRuleCollection].
  /// [action] The action to take for the NAT rules in this collection. Currently, the only possible value is `Dnat`.
  /// [name] The name which should be used for this NAT rule collection.
  /// [priority] The priority of the NAT rule collection. The range is `100` - `65000`.
  /// [rules] A `nat_rule` block as defined below.
  FirewallPolicyRuleCollectionGroupNatRuleCollection({
    required this.action,
    required this.name,
    required this.priority,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'priority': priority,
      'rules': pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyRuleCollectionGroupNatRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupNatRuleCollection(
      action: map['action'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      rules: pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule>(map['rules'], (value) => FirewallPolicyRuleCollectionGroupNatRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

