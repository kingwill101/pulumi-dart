// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_actions.dart';
import 'frontdoor_rule_conditions.dart';

/// Input properties used for looking up and filtering FrontdoorRule resources.
class FrontdoorRuleState {
  /// An `actions` block as defined below.
  final pulumi.Input<FrontdoorRuleActions>? actions;
  /// If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  final pulumi.Input<String>? behaviorOnMatch;
  /// The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  final pulumi.Input<String>? cdnFrontdoorRuleSetId;
  /// The name of the Front Door Rule Set containing this Front Door Rule.
  final pulumi.Input<String>? cdnFrontdoorRuleSetName;
  /// A `conditions` block as defined below.
  final pulumi.Input<FrontdoorRuleConditions>? conditions;
  /// The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  final pulumi.Input<String>? name;
  /// The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  ///
  /// > **Note:** If the Front Door Rule has an order value of `0` they do not require any conditions and the actions will always be applied.
  final pulumi.Input<int>? order;

  /// Creates a new [FrontdoorRuleState].
  /// [actions] An `actions` block as defined below.
  /// [behaviorOnMatch] If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  /// [cdnFrontdoorRuleSetId] The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  /// [cdnFrontdoorRuleSetName] The name of the Front Door Rule Set containing this Front Door Rule.
  /// [conditions] A `conditions` block as defined below.
  /// [name] The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  /// [order] The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  FrontdoorRuleState({
    pulumi.Output<FrontdoorRuleActions>? actions,
    pulumi.Output<String>? behaviorOnMatch,
    pulumi.Output<String>? cdnFrontdoorRuleSetId,
    pulumi.Output<String>? cdnFrontdoorRuleSetName,
    pulumi.Output<FrontdoorRuleConditions>? conditions,
    pulumi.Output<String>? name,
    pulumi.Output<int>? order,
  }) :
      actions = pulumi.Input.asOptionalInput<FrontdoorRuleActions>(actions),
      behaviorOnMatch = pulumi.Input.asOptionalInput<String>(behaviorOnMatch),
      cdnFrontdoorRuleSetId = pulumi.Input.asOptionalInput<String>(cdnFrontdoorRuleSetId),
      cdnFrontdoorRuleSetName = pulumi.Input.asOptionalInput<String>(cdnFrontdoorRuleSetName),
      conditions = pulumi.Input.asOptionalInput<FrontdoorRuleConditions>(conditions),
      name = pulumi.Input.asOptionalInput<String>(name),
      order = pulumi.Input.asOptionalInput<int>(order);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<FrontdoorRuleActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'behaviorOnMatch': ?behaviorOnMatch,
      'cdnFrontdoorRuleSetId': ?cdnFrontdoorRuleSetId,
      'cdnFrontdoorRuleSetName': ?cdnFrontdoorRuleSetName,
      'conditions': ?pulumi.Input.mapOptionalInputValue<FrontdoorRuleConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'name': ?name,
      'order': ?order,
    };
  }

  factory FrontdoorRuleState.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleState(
      actions: map['actions'] == null ? null : pulumi.Output.create<FrontdoorRuleActions>(FrontdoorRuleActions.fromMap((map['actions'] as Map).cast<String, dynamic>())),
      behaviorOnMatch: map['behaviorOnMatch'] == null ? null : pulumi.Output.create<String>(map['behaviorOnMatch'] as String),
      cdnFrontdoorRuleSetId: map['cdnFrontdoorRuleSetId'] == null ? null : pulumi.Output.create<String>(map['cdnFrontdoorRuleSetId'] as String),
      cdnFrontdoorRuleSetName: map['cdnFrontdoorRuleSetName'] == null ? null : pulumi.Output.create<String>(map['cdnFrontdoorRuleSetName'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<FrontdoorRuleConditions>(FrontdoorRuleConditions.fromMap((map['conditions'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      order: map['order'] == null ? null : pulumi.Output.create<int>(map['order'] as int),
    );
  }
}

