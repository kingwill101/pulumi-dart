// ignore_for_file: unused_element, unnecessary_cast

import 'application_rule_condition.dart';
import 'firewall_policy_nat_rule_action.dart';

/// Firewall Policy NAT Rule.
class FirewallPolicyNatRule {
  /// The action type of a Nat rule.
  final FirewallPolicyNatRuleAction? action;
  /// The name of the rule.
  final String? name;
  /// Priority of the Firewall Policy Rule resource.
  final int? priority;
  /// The match conditions for incoming traffic.
  final ApplicationRuleCondition? ruleCondition;
  /// The type of the rule.
  /// Expected value is 'FirewallPolicyNatRule'.
  final String ruleType;
  /// The translated address for this NAT rule.
  final String? translatedAddress;
  /// The translated port for this NAT rule.
  final String? translatedPort;

  /// Creates a new [FirewallPolicyNatRule].
  /// [action] The action type of a Nat rule.
  /// [name] The name of the rule.
  /// [priority] Priority of the Firewall Policy Rule resource.
  /// [ruleCondition] The match conditions for incoming traffic.
  /// [ruleType] The type of the rule.
  /// [translatedAddress] The translated address for this NAT rule.
  /// [translatedPort] The translated port for this NAT rule.
  FirewallPolicyNatRule({
    this.action,
    this.name,
    this.priority,
    this.ruleCondition,
    required this.ruleType,
    this.translatedAddress,
    this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'name': ?name,
      'priority': ?priority,
      'ruleCondition': ?ruleCondition == null ? null : ruleCondition!.toMap(),
      'ruleType': ruleType,
      'translatedAddress': ?translatedAddress,
      'translatedPort': ?translatedPort,
    };
  }

  factory FirewallPolicyNatRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRule(
      action: map['action'] == null ? null : FirewallPolicyNatRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleCondition: map['ruleCondition'] == null ? null : ApplicationRuleCondition.fromMap((map['ruleCondition'] as Map).cast<String, dynamic>()),
      ruleType: map['ruleType'] as String,
      translatedAddress: map['translatedAddress'] == null ? null : map['translatedAddress'] as String,
      translatedPort: map['translatedPort'] == null ? null : map['translatedPort'] as String,
    );
  }
}

