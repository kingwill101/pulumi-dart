// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule_condition_response.dart';
import 'firewall_policy_filter_rule_action_response.dart';

/// Firewall Policy Filter Rule.
class FirewallPolicyFilterRuleResponse {
  /// The action type of a Filter rule.
  final pulumi.Input<FirewallPolicyFilterRuleActionResponse>? action;
  /// The name of the rule.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule resource.
  final pulumi.Input<int>? priority;
  /// Collection of rule conditions used by a rule.
  final pulumi.Input<List<ApplicationRuleConditionResponse>>? ruleConditions;
  /// The type of the rule.
  /// Expected value is 'FirewallPolicyFilterRule'.
  final pulumi.Input<String> ruleType;

  /// Creates a new [FirewallPolicyFilterRuleResponse].
  /// [action] The action type of a Filter rule.
  /// [name] The name of the rule.
  /// [priority] Priority of the Firewall Policy Rule resource.
  /// [ruleConditions] Collection of rule conditions used by a rule.
  /// [ruleType] The type of the rule.
  FirewallPolicyFilterRuleResponse({
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
      'ruleConditions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRuleConditionResponse>, List<Map<String, dynamic>>>(ruleConditions, (value) => pulumi.Input.encodeList<ApplicationRuleConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleType': ruleType,
    };
  }

  factory FirewallPolicyFilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleResponse(
      action: map['action'] == null ? null : (FirewallPolicyFilterRuleActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      ruleConditions: map['ruleConditions'] == null ? null : (pulumi.Input.decodeList<ApplicationRuleConditionResponse>(map['ruleConditions'], (value) => ApplicationRuleConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleType: (map['ruleType'] as String).input(),
    );
  }
}

