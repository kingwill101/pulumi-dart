// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_batch_rule_set_rule_actions.dart';
import 'frontdoor_batch_rule_set_rule_conditions.dart';

class FrontdoorBatchRuleSetRule {
  /// An `actions` block as defined below.
  final pulumi.Input<FrontdoorBatchRuleSetRuleActions> actions;
  /// The behaviour on a condition match. Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  final pulumi.Input<String?>? behaviourOnMatch;
  /// A `conditions` block as defined below.
  final pulumi.Input<FrontdoorBatchRuleSetRuleConditions?>? conditions;
  /// The name which should be used for this Front Door Batch Rule.
  ///
  /// &gt; **Note:** `name` must be between `1` and `260` characters in length, begin with a letter, and may contain only letters and numbers.
  final pulumi.Input<String> name;
  /// The order in which this rule will be applied for the Front Door Endpoint. Rules with a lesser `order` value are applied before rules with a greater `order` value. Possible values are `0` or greater.
  final pulumi.Input<int> order;

  /// Creates a new [FrontdoorBatchRuleSetRule].
  /// [actions] An `actions` block as defined below.
  /// [behaviourOnMatch] The behaviour on a condition match. Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  /// [conditions] A `conditions` block as defined below.
  /// [name] The name which should be used for this Front Door Batch Rule.
  /// [order] The order in which this rule will be applied for the Front Door Endpoint. Rules with a lesser `order` value are applied before rules with a greater `order` value. Possible values are `0` or greater.
  const FrontdoorBatchRuleSetRule({
    required this.actions,
    this.behaviourOnMatch,
    this.conditions,
    required this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<FrontdoorBatchRuleSetRuleActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'behaviourOnMatch': ?behaviourOnMatch,
      'conditions': ?pulumi.Input.mapOptionalInputValue<FrontdoorBatchRuleSetRuleConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'name': name,
      'order': order,
    };
  }

  factory FrontdoorBatchRuleSetRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRule(
      actions: pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleActions.fromMap((map['actions']! as Map).cast<String, dynamic>())),
      behaviourOnMatch: (() { final guardedValue = map['behaviourOnMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      order: pulumi.Input.fromValue((map['order'] as num).toInt()),
    );
  }
}
