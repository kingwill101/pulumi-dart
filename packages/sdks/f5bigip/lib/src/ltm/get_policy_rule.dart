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
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<GetPolicyRuleAction>(map['actions']!, (value) => GetPolicyRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<GetPolicyRuleCondition>(map['conditions']!, (value) => GetPolicyRuleCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

