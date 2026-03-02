// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_network_rule_collection_rule.dart';

class FirewallPolicyRuleCollectionGroupNetworkRuleCollection {
  /// The action to take for the network rules in this collection. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> action;
  /// The name which should be used for this network rule collection.
  final pulumi.Input<String> name;
  /// The priority of the network rule collection. The range is `100` - `65000`.
  final pulumi.Input<int> priority;
  /// One or more `network_rule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule>> rules;

  /// Creates a new [FirewallPolicyRuleCollectionGroupNetworkRuleCollection].
  /// [action] The action to take for the network rules in this collection. Possible values are `Allow` and `Deny`.
  /// [name] The name which should be used for this network rule collection.
  /// [priority] The priority of the network rule collection. The range is `100` - `65000`.
  /// [rules] One or more `network_rule` blocks as defined below.
  FirewallPolicyRuleCollectionGroupNetworkRuleCollection({
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
      'rules': pulumi.Input.mapInputValue<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleCollectionGroupNetworkRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupNetworkRuleCollection(
      action: (map['action'] as String).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      rules: (pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule>(map['rules'], (value) => FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

