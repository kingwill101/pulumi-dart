// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule_condition_response.dart';
import 'firewall_policy_nat_rule_action_response.dart';

/// Firewall Policy NAT Rule.
class FirewallPolicyNatRuleResponse {
  /// The action type of a Nat rule.
  final pulumi.Input<FirewallPolicyNatRuleActionResponse>? action;
  /// The name of the rule.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule resource.
  final pulumi.Input<int>? priority;
  /// The match conditions for incoming traffic.
  final pulumi.Input<ApplicationRuleConditionResponse>? ruleCondition;
  /// The type of the rule.
  /// Expected value is 'FirewallPolicyNatRule'.
  final pulumi.Input<String> ruleType;
  /// The translated address for this NAT rule.
  final pulumi.Input<String>? translatedAddress;
  /// The translated port for this NAT rule.
  final pulumi.Input<String>? translatedPort;

  /// Creates a new [FirewallPolicyNatRuleResponse].
  /// [action] The action type of a Nat rule.
  /// [name] The name of the rule.
  /// [priority] Priority of the Firewall Policy Rule resource.
  /// [ruleCondition] The match conditions for incoming traffic.
  /// [ruleType] The type of the rule.
  /// [translatedAddress] The translated address for this NAT rule.
  /// [translatedPort] The translated port for this NAT rule.
  FirewallPolicyNatRuleResponse({
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
      'action': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyNatRuleActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'ruleCondition': ?pulumi.Input.mapOptionalInputValue<ApplicationRuleConditionResponse, Map<String, dynamic>>(ruleCondition, (value) => value.toMap()),
      'ruleType': ruleType,
      'translatedAddress': ?translatedAddress,
      'translatedPort': ?translatedPort,
    };
  }

  factory FirewallPolicyNatRuleResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleResponse(
      action: map['action'] == null ? null : (FirewallPolicyNatRuleActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      ruleCondition: map['ruleCondition'] == null ? null : (ApplicationRuleConditionResponse.fromMap((map['ruleCondition']! as Map).cast<String, dynamic>())).input(),
      ruleType: (map['ruleType'] as String).input(),
      translatedAddress: map['translatedAddress'] == null ? null : (map['translatedAddress']! as String).input(),
      translatedPort: map['translatedPort'] == null ? null : (map['translatedPort']! as String).input(),
    );
  }
}

