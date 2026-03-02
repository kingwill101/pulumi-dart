// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule_action.dart';
import 'policy_rule_condition.dart';

class PolicyRule {
  /// Block type. See action block for more details.
  final pulumi.Input<List<PolicyRuleAction>>? actions;
  /// Block type. See condition block for more details.
  final pulumi.Input<List<PolicyRuleCondition>>? conditions;
  /// Specifies descriptive text that identifies the irule attached to policy.
  final pulumi.Input<String>? description;
  /// Name of Rule to be applied in policy.
  final pulumi.Input<String> name;

  /// Creates a new [PolicyRule].
  /// [actions] Block type. See action block for more details.
  /// [conditions] Block type. See condition block for more details.
  /// [description] Specifies descriptive text that identifies the irule attached to policy.
  /// [name] Name of Rule to be applied in policy.
  PolicyRule({
    this.actions,
    this.conditions,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PolicyRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PolicyRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PolicyRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PolicyRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
    };
  }

  factory PolicyRule.fromMap(Map<String, dynamic> map) {
    return PolicyRule(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<PolicyRuleAction>(map['actions']!, (value) => PolicyRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<PolicyRuleCondition>(map['conditions']!, (value) => PolicyRuleCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

