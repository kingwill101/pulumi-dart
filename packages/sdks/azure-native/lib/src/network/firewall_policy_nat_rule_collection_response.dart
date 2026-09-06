// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_nat_rule_collection_action_response.dart';

/// Firewall Policy NAT Rule Collection.
class FirewallPolicyNatRuleCollectionResponse {
  /// The action type of a Nat rule collection.
  final pulumi.Input<FirewallPolicyNatRuleCollectionActionResponse?>? action;
  /// The name of the rule collection.
  final pulumi.Input<String?>? name;
  /// Priority of the Firewall Policy Rule Collection resource.
  final pulumi.Input<int?>? priority;
  /// The type of the rule collection.
  /// Expected value is 'FirewallPolicyNatRuleCollection'.
  final pulumi.Input<String> ruleCollectionType;
  /// List of rules included in a rule collection.
  final pulumi.Input<List<dynamic>?>? rules;

  /// Creates a new [FirewallPolicyNatRuleCollectionResponse].
  /// [action] The action type of a Nat rule collection.
  /// [name] The name of the rule collection.
  /// [priority] Priority of the Firewall Policy Rule Collection resource.
  /// [ruleCollectionType] The type of the rule collection.
  /// [rules] List of rules included in a rule collection.
  const FirewallPolicyNatRuleCollectionResponse({
    this.action,
    this.name,
    this.priority,
    required this.ruleCollectionType,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyNatRuleCollectionActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'ruleCollectionType': ruleCollectionType,
      'rules': ?rules,
    };
  }

  factory FirewallPolicyNatRuleCollectionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleCollectionResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyNatRuleCollectionActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ruleCollectionType: pulumi.Input.fromValue(map['ruleCollectionType'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
