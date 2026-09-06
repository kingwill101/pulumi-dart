// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule_action_response.dart';

/// Firewall Policy Filter Rule.
class FirewallPolicyFilterRuleResponse {
  /// The action type of a Filter rule.
  final pulumi.Input<FirewallPolicyFilterRuleActionResponse?>? action;
  /// The name of the rule.
  final pulumi.Input<String?>? name;
  /// Priority of the Firewall Policy Rule resource.
  final pulumi.Input<int?>? priority;
  /// Collection of rule conditions used by a rule.
  final pulumi.Input<List<dynamic>?>? ruleConditions;
  /// The type of the rule.
  /// Expected value is 'FirewallPolicyFilterRule'.
  final pulumi.Input<String> ruleType;

  /// Creates a new [FirewallPolicyFilterRuleResponse].
  /// [action] The action type of a Filter rule.
  /// [name] The name of the rule.
  /// [priority] Priority of the Firewall Policy Rule resource.
  /// [ruleConditions] Collection of rule conditions used by a rule.
  /// [ruleType] The type of the rule.
  const FirewallPolicyFilterRuleResponse({
    this.action,
    this.name,
    this.priority,
    this.ruleConditions,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyFilterRuleActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'ruleConditions': ?ruleConditions,
      'ruleType': ruleType,
    };
  }

  factory FirewallPolicyFilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyFilterRuleActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ruleConditions: (() { final guardedValue = map['ruleConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}
