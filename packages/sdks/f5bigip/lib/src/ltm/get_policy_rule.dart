// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule_action.dart';
import 'get_policy_rule_condition.dart';

class GetPolicyRule {
  final pulumi.Input<List<GetPolicyRuleAction>>? actions;
  final pulumi.Input<List<GetPolicyRuleCondition>>? conditions;
  /// Name of the policy which includes partion ( /partition/policy-name )
  final pulumi.Input<String> name;

  /// Creates a new [GetPolicyRule].
  /// [actions] Optional.
  /// [conditions] Optional.
  /// [name] Name of the policy which includes partion ( /partition/policy-name )
  GetPolicyRule({
    this.actions,
    this.conditions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetPolicyRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetPolicyRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetPolicyRule(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRuleAction>(guardedValue, (value) => GetPolicyRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRuleCondition>(guardedValue, (value) => GetPolicyRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

