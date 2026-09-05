// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection_rule.dart';

class FirewallPolicyRuleCollectionGroupApplicationRuleCollection {
  /// The action to take for the application rules in this collection. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> action;
  /// The name which should be used for this application rule collection.
  final pulumi.Input<String> name;
  /// The priority of the application rule collection. The range is `100` - `65000`.
  final pulumi.Input<int> priority;
  /// One or more `applicationRule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule>> rules;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollection].
  /// [action] The action to take for the application rules in this collection. Possible values are `Allow` and `Deny`.
  /// [name] The name which should be used for this application rule collection.
  /// [priority] The priority of the application rule collection. The range is `100` - `65000`.
  /// [rules] One or more `applicationRule` blocks as defined below.
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollection({
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
      'rules': pulumi.Input.mapInputValue<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleCollectionGroupApplicationRuleCollection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupApplicationRuleCollection(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule>(map['rules']!, (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
