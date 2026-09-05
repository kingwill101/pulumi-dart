// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_actions.dart';
import 'frontdoor_rule_conditions.dart';

/// Input properties used for looking up and filtering FrontdoorRule resources.
class FrontdoorRuleState {
  /// An `actions` block as defined below.
  final pulumi.Input<FrontdoorRuleActions?>? actions;
  /// If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  final pulumi.Input<String?>? behaviorOnMatch;
  /// The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  ///
  /// &gt; **Note:** The `cdnFrontdoorRuleSetId` must reference a non-batch mode rule set, individual rules for batch mode rule sets cannot be managed by this resource.
  final pulumi.Input<String?>? cdnFrontdoorRuleSetId;
  /// The name of the Front Door Rule Set containing this Front Door Rule.
  final pulumi.Input<String?>? cdnFrontdoorRuleSetName;
  /// A `conditions` block as defined below.
  final pulumi.Input<FrontdoorRuleConditions?>? conditions;
  /// The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  final pulumi.Input<String?>? name;
  /// The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  ///
  /// &gt; **Note:** If the Front Door Rule has an order value of `0` they do not require any conditions and the actions will always be applied.
  final pulumi.Input<int?>? order;

  /// Creates a new [FrontdoorRuleState].
  /// [actions] An `actions` block as defined below.
  /// [behaviorOnMatch] If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`.
  /// [cdnFrontdoorRuleSetId] The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created.
  /// [cdnFrontdoorRuleSetName] The name of the Front Door Rule Set containing this Front Door Rule.
  /// [conditions] A `conditions` block as defined below.
  /// [name] The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created.
  /// [order] The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value.
  const FrontdoorRuleState({
    this.actions,
    this.behaviorOnMatch,
    this.cdnFrontdoorRuleSetId,
    this.cdnFrontdoorRuleSetName,
    this.conditions,
    this.name,
    this.order,
  });

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
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRuleActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      behaviorOnMatch: (() { final guardedValue = map['behaviorOnMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cdnFrontdoorRuleSetId: (() { final guardedValue = map['cdnFrontdoorRuleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cdnFrontdoorRuleSetName: (() { final guardedValue = map['cdnFrontdoorRuleSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRuleConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
