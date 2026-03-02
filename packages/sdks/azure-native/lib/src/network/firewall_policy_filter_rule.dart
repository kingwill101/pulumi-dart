// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule_condition.dart';
import 'firewall_policy_filter_rule_action.dart';

/// Firewall Policy Filter Rule.
class FirewallPolicyFilterRule {
  /// The action type of a Filter rule.
  final pulumi.Input<FirewallPolicyFilterRuleAction>? action;
  /// The name of the rule.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule resource.
  final pulumi.Input<int>? priority;
  /// Collection of rule conditions used by a rule.
  final pulumi.Input<List<ApplicationRuleCondition>>? ruleConditions;
  /// The type of the rule.
  /// Expected value is 'FirewallPolicyFilterRule'.
  final pulumi.Input<String> ruleType;

  /// Creates a new [FirewallPolicyFilterRule].
  /// [action] The action type of a Filter rule.
  /// [name] The name of the rule.
  /// [priority] Priority of the Firewall Policy Rule resource.
  /// [ruleConditions] Collection of rule conditions used by a rule.
  /// [ruleType] The type of the rule.
  FirewallPolicyFilterRule({
    this.action,
    this.name,
    this.priority,
    this.ruleConditions,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyFilterRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'ruleConditions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRuleCondition>, List<Map<String, dynamic>>>(ruleConditions, (value) => pulumi.Input.encodeList<ApplicationRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleType': ruleType,
    };
  }

  factory FirewallPolicyFilterRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRule(
      action: map['action'] == null ? null : (FirewallPolicyFilterRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      ruleConditions: map['ruleConditions'] == null ? null : (pulumi.Input.decodeList<ApplicationRuleCondition>(map['ruleConditions']!, (value) => ApplicationRuleCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleType: (map['ruleType'] as String).input(),
    );
  }
}

