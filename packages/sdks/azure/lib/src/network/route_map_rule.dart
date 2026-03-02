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
      'actions': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<RouteMapRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchCriterions': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRuleMatchCriterion>, List<Map<String, dynamic>>>(matchCriterions, (value) => pulumi.Input.encodeList<RouteMapRuleMatchCriterion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nextStepIfMatched': ?nextStepIfMatched,
    };
  }

  factory RouteMapRule.fromMap(Map<String, dynamic> map) {
    return RouteMapRule(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<RouteMapRuleAction>(map['actions']!, (value) => RouteMapRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchCriterions: map['matchCriterions'] == null ? null : (pulumi.Input.decodeList<RouteMapRuleMatchCriterion>(map['matchCriterions']!, (value) => RouteMapRuleMatchCriterion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      nextStepIfMatched: map['nextStepIfMatched'] == null ? null : (map['nextStepIfMatched']! as String).input(),
    );
  }
}

