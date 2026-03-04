// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule_action.dart';
import 'route_map_rule_match_criterion.dart';

class RouteMapRule {
  /// An `action` block as defined below.
  final pulumi.Input<List<RouteMapRuleAction>>? actions;

  /// A `match_criterion` block as defined below.
  final pulumi.Input<List<RouteMapRuleMatchCriterion>>? matchCriterions;

  /// The unique name for the rule.
  final pulumi.Input<String> name;

  /// The next step after the rule is evaluated. Possible values are `Continue`, `Terminate` and `Unknown`. Defaults to `Unknown`.
  final pulumi.Input<String>? nextStepIfMatched;

  /// Creates a new [RouteMapRule].
  /// [actions] An `action` block as defined below.
  /// [matchCriterions] A `match_criterion` block as defined below.
  /// [name] The unique name for the rule.
  /// [nextStepIfMatched] The next step after the rule is evaluated. Possible values are `Continue`, `Terminate` and `Unknown`. Defaults to `Unknown`.
  RouteMapRule({
    this.actions,
    this.matchCriterions,
    required this.name,
    this.nextStepIfMatched,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouteMapRuleAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  RouteMapRuleAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'matchCriterions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouteMapRuleMatchCriterion>,
            List<Map<String, dynamic>>
          >(
            matchCriterions,
            (value) =>
                pulumi.Input.encodeList<
                  RouteMapRuleMatchCriterion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'nextStepIfMatched': ?nextStepIfMatched,
    };
  }

  factory RouteMapRule.fromMap(Map<String, dynamic> map) {
    return RouteMapRule(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RouteMapRuleAction>(
            guardedValue,
            (value) => RouteMapRuleAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      matchCriterions: (() {
        final guardedValue = map['matchCriterions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RouteMapRuleMatchCriterion>(
            guardedValue,
            (value) => RouteMapRuleMatchCriterion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextStepIfMatched: (() {
        final guardedValue = map['nextStepIfMatched'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
