// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule_response.dart';
import 'firewall_policy_filter_rule_collection_action_response.dart';

/// Firewall Policy Filter Rule Collection.
class FirewallPolicyFilterRuleCollectionResponse {
  /// The action type of a Filter rule collection.
  final FirewallPolicyFilterRuleCollectionActionResponse? action;
  /// The name of the rule collection.
  final String? name;
  /// Priority of the Firewall Policy Rule Collection resource.
  final int? priority;
  /// The type of the rule collection.
  /// Expected value is 'FirewallPolicyFilterRuleCollection'.
  final String ruleCollectionType;
  /// List of rules included in a rule collection.
  final List<ApplicationRuleResponse>? rules;

  /// Creates a new [FirewallPolicyFilterRuleCollectionResponse].
  /// [action] The action type of a Filter rule collection.
  /// [name] The name of the rule collection.
  /// [priority] Priority of the Firewall Policy Rule Collection resource.
  /// [ruleCollectionType] The type of the rule collection.
  /// [rules] List of rules included in a rule collection.
  FirewallPolicyFilterRuleCollectionResponse({
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
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ApplicationRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyFilterRuleCollectionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleCollectionResponse(
      action: map['action'] == null ? null : FirewallPolicyFilterRuleCollectionActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleCollectionType: map['ruleCollectionType'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ApplicationRuleResponse>(map['rules'], (value) => ApplicationRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

