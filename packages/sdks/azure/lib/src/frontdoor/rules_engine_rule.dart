// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_action.dart';
import 'rules_engine_rule_match_condition.dart';

class RulesEngineRule {
  /// An `action` block as defined below.
  final RulesEngineRuleAction? action;
  /// One or more `match_condition` block as defined below.
  final List<RulesEngineRuleMatchCondition>? matchConditions;
  /// The name of the rule.
  final String name;
  /// Priority of the rule, must be unique per rules engine definition.
  final int priority;

  /// Creates a new [RulesEngineRule].
  /// [action] An `action` block as defined below.
  /// [matchConditions] One or more `match_condition` block as defined below.
  /// [name] The name of the rule.
  /// [priority] Priority of the rule, must be unique per rules engine definition.
  RulesEngineRule({
    this.action,
    this.matchConditions,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<RulesEngineRuleMatchCondition, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'name': name,
      'priority': priority,
    };
  }

  factory RulesEngineRule.fromMap(Map<String, dynamic> map) {
    return RulesEngineRule(
      action: map['action'] == null ? null : RulesEngineRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<RulesEngineRuleMatchCondition>(map['matchConditions'], (value) => RulesEngineRuleMatchCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

