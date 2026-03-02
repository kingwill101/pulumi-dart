// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule.dart';
import 'firewall_policy_filter_rule_collection_action.dart';

/// Firewall Policy Filter Rule Collection.
class FirewallPolicyFilterRuleCollection {
  /// The action type of a Filter rule collection.
  final pulumi.Input<FirewallPolicyFilterRuleCollectionAction>? action;
  /// The name of the rule collection.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule Collection resource.
  final pulumi.Input<int>? priority;
  /// The type of the rule collection.
  /// Expected value is 'FirewallPolicyFilterRuleCollection'.
  final pulumi.Input<String> ruleCollectionType;
  /// List of rules included in a rule collection.
  final pulumi.Input<List<ApplicationRule>>? rules;

  /// Creates a new [FirewallPolicyFilterRuleCollection].
  /// [action] The action type of a Filter rule collection.
  /// [name] The name of the rule collection.
  /// [priority] Priority of the Firewall Policy Rule Collection resource.
  /// [ruleCollectionType] The type of the rule collection.
  /// [rules] List of rules included in a rule collection.
  FirewallPolicyFilterRuleCollection({
    this.action,
    this.name,
    this.priority,
    required this.ruleCollectionType,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyFilterRuleCollectionAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'ruleCollectionType': ruleCollectionType,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ApplicationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyFilterRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleCollection(
      action: map['action'] == null ? null : (FirewallPolicyFilterRuleCollectionAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      ruleCollectionType: (map['ruleCollectionType'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ApplicationRule>(map['rules'], (value) => ApplicationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

