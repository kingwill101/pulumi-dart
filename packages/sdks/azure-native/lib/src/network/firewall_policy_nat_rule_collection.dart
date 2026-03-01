// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule.dart';
import 'firewall_policy_nat_rule_collection_action.dart';

/// Firewall Policy NAT Rule Collection.
class FirewallPolicyNatRuleCollection {
  /// The action type of a Nat rule collection.
  final FirewallPolicyNatRuleCollectionAction? action;
  /// The name of the rule collection.
  final String? name;
  /// Priority of the Firewall Policy Rule Collection resource.
  final int? priority;
  /// The type of the rule collection.
  /// Expected value is 'FirewallPolicyNatRuleCollection'.
  final String ruleCollectionType;
  /// List of rules included in a rule collection.
  final List<ApplicationRule>? rules;

  /// Creates a new [FirewallPolicyNatRuleCollection].
  /// [action] The action type of a Nat rule collection.
  /// [name] The name of the rule collection.
  /// [priority] Priority of the Firewall Policy Rule Collection resource.
  /// [ruleCollectionType] The type of the rule collection.
  /// [rules] List of rules included in a rule collection.
  FirewallPolicyNatRuleCollection({
    this.action,
    this.name,
    this.priority,
    required this.ruleCollectionType,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'name': ?name,
      'priority': ?priority,
      'ruleCollectionType': ruleCollectionType,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ApplicationRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyNatRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleCollection(
      action: map['action'] == null ? null : FirewallPolicyNatRuleCollectionAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleCollectionType: map['ruleCollectionType'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ApplicationRule>(map['rules'], (value) => ApplicationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

