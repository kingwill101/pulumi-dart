// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_action.dart';
import 'rules_engine_rule_match_condition.dart';

class RulesEngineRule {
  /// An `action` block as defined below.
  final pulumi.Input<RulesEngineRuleAction>? action;
  /// One or more `match_condition` block as defined below.
  final pulumi.Input<List<RulesEngineRuleMatchCondition>>? matchConditions;
  /// The name of the rule.
  final pulumi.Input<String> name;
  /// Priority of the rule, must be unique per rules engine definition.
  final pulumi.Input<int> priority;

  /// Creates a new [RulesEngineRule].
  /// [action] An `action` block as defined below.
  /// [matchConditions] One or more `match_condition` block as defined below.
  /// [name] The name of the rule.
  /// [priority] Priority of the rule, must be unique per rules engine definition.
  const RulesEngineRule({
    this.action,
    this.matchConditions,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RulesEngineRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<RulesEngineRuleMatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<RulesEngineRuleMatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'priority': priority,
    };
  }

  factory RulesEngineRule.fromMap(Map<String, dynamic> map) {
    return RulesEngineRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesEngineRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesEngineRuleMatchCondition>(guardedValue, (value) => RulesEngineRuleMatchCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}

