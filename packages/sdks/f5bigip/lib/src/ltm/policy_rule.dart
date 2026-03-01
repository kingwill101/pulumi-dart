// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule_action.dart';
import 'policy_rule_condition.dart';

class PolicyRule {
  /// Block type. See action block for more details.
  final List<PolicyRuleAction>? actions;
  /// Block type. See condition block for more details.
  final List<PolicyRuleCondition>? conditions;
  /// Specifies descriptive text that identifies the irule attached to policy.
  final String? description;
  /// Name of Rule to be applied in policy.
  final String name;

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
      'actions': ?actions == null ? null : pulumi.Input.encodeList<PolicyRuleAction, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<PolicyRuleCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'description': ?description,
      'name': name,
    };
  }

  factory PolicyRule.fromMap(Map<String, dynamic> map) {
    return PolicyRule(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<PolicyRuleAction>(map['actions'], (value) => PolicyRuleAction.fromMap((value as Map).cast<String, dynamic>())),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<PolicyRuleCondition>(map['conditions'], (value) => PolicyRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
    );
  }
}

