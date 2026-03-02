// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_actions.dart';
import 'frontdoor_rule_conditions.dart';

/// {@template pulumi_cdn_frontdoor_rule_frontdoor_rule_args_doc}
/// The set of arguments for FrontdoorRule.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_rule_frontdoor_rule_args_doc}
class FrontdoorRuleArgs {
  /// An `actions` block as defined below.
  final pulumi.Input<FrontdoorRuleActions> actions;
  /// If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  final pulumi.Input<String>? behaviorOnMatch;
  /// The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  final pulumi.Input<String> cdnFrontdoorRuleSetId;
  /// A `conditions` block as defined below.
  final pulumi.Input<FrontdoorRuleConditions>? conditions;
  /// The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  final pulumi.Input<String>? name;
  /// The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  ///
  /// > **Note:** If the Front Door Rule has an order value of `0` they do not require any conditions and the actions will always be applied.
  final pulumi.Input<int> order;

  /// Creates a new [FrontdoorRuleArgs].
  /// [actions] An `actions` block as defined below.
  /// [behaviorOnMatch] If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  /// [cdnFrontdoorRuleSetId] The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  /// [conditions] A `conditions` block as defined below.
  /// [name] The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  /// [order] The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  FrontdoorRuleArgs({
    required this.actions,
    this.behaviorOnMatch,
    required this.cdnFrontdoorRuleSetId,
    this.conditions,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<FrontdoorRuleActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'behaviorOnMatch': ?behaviorOnMatch,
      'cdnFrontdoorRuleSetId': cdnFrontdoorRuleSetId,
      'conditions': ?pulumi.Input.mapOptionalInputValue<FrontdoorRuleConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'name': ?name,
      'order': order,
    };
  }

  factory FrontdoorRuleArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleArgs(
      actions: (FrontdoorRuleActions.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      behaviorOnMatch: map['behaviorOnMatch'] == null ? null : (map['behaviorOnMatch'] as String).input(),
      cdnFrontdoorRuleSetId: (map['cdnFrontdoorRuleSetId'] as String).input(),
      conditions: map['conditions'] == null ? null : (FrontdoorRuleConditions.fromMap((map['conditions'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      order: (map['order'] as int).input(),
    );
  }
}

