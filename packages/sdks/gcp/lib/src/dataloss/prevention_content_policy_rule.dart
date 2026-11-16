// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_rule_action.dart';
import 'prevention_content_policy_rule_condition.dart';

class PreventionContentPolicyRule {
  /// The action to take if the rule matches.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyRuleAction> action;
  /// List of conditions that must be met for this rule to apply.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyRuleCondition>?>? conditions;

  /// Creates a new [PreventionContentPolicyRule].
  /// [action] The action to take if the rule matches.
  /// [conditions] List of conditions that must be met for this rule to apply.
  const PreventionContentPolicyRule({
    required this.action,
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<PreventionContentPolicyRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PreventionContentPolicyRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionContentPolicyRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyRule(
      action: pulumi.Input.fromValue(PreventionContentPolicyRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyRuleCondition>(guardedValue, (value) => PreventionContentPolicyRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
