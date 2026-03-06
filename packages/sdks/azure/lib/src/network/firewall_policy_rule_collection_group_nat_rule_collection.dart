// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_nat_rule_collection_rule.dart';

class FirewallPolicyRuleCollectionGroupNatRuleCollection {
  /// The action to take for the NAT rules in this collection. Currently, the only possible value is `Dnat`.
  final pulumi.Input<String> action;
  /// The name which should be used for this NAT rule collection.
  final pulumi.Input<String> name;
  /// The priority of the NAT rule collection. The range is `100` - `65000`.
  final pulumi.Input<int> priority;
  /// A `nat_rule` block as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule>> rules;

  /// Creates a new [FirewallPolicyRuleCollectionGroupNatRuleCollection].
  /// [action] The action to take for the NAT rules in this collection. Currently, the only possible value is `Dnat`.
  /// [name] The name which should be used for this NAT rule collection.
  /// [priority] The priority of the NAT rule collection. The range is `100` - `65000`.
  /// [rules] A `nat_rule` block as defined below.
  const FirewallPolicyRuleCollectionGroupNatRuleCollection({
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
      'rules': pulumi.Input.mapInputValue<List<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleCollectionGroupNatRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupNatRuleCollection(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNatRuleCollectionRule>(map['rules']!, (value) => FirewallPolicyRuleCollectionGroupNatRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

