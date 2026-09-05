// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_batch_rule_set_rule_action.dart';
import 'get_frontdoor_batch_rule_set_rule_condition.dart';

class GetFrontdoorBatchRuleSetRule {
  /// An `actions` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleAction>> actions;
  /// Whether the rules engine continues processing after this rule matches.
  final pulumi.Input<String> behaviourOnMatch;
  /// A `conditions` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleCondition>> conditions;
  /// The name of the Front Door Batch Rule Set.
  final pulumi.Input<String> name;
  /// The order in which this rule is applied.
  final pulumi.Input<int> order;

  /// Creates a new [GetFrontdoorBatchRuleSetRule].
  /// [actions] An `actions` block as defined below.
  /// [behaviourOnMatch] Whether the rules engine continues processing after this rule matches.
  /// [conditions] A `conditions` block as defined below.
  /// [name] The name of the Front Door Batch Rule Set.
  /// [order] The order in which this rule is applied.
  const GetFrontdoorBatchRuleSetRule({
    required this.actions,
    required this.behaviourOnMatch,
    required this.conditions,
    required this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'behaviourOnMatch': behaviourOnMatch,
      'conditions': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'order': order,
    };
  }

  factory GetFrontdoorBatchRuleSetRule.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRule(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleAction>(map['actions']!, (value) => GetFrontdoorBatchRuleSetRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      behaviourOnMatch: pulumi.Input.fromValue(map['behaviourOnMatch'] as String),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleCondition>(map['conditions']!, (value) => GetFrontdoorBatchRuleSetRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      order: pulumi.Input.fromValue((map['order'] as num).toInt()),
    );
  }
}
