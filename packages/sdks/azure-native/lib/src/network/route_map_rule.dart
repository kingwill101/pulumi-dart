// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';
import 'criterion.dart';

/// A RouteMap Rule.
class RouteMapRule {
  /// List of actions which will be applied on a match.
  final List<Action>? actions;
  /// List of matching criterion which will be applied to traffic.
  final List<Criterion>? matchCriteria;
  /// The unique name for the rule.
  final String? name;
  /// Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  final String? nextStepIfMatched;

  /// Creates a new [RouteMapRule].
  /// [actions] List of actions which will be applied on a match.
  /// [matchCriteria] List of matching criterion which will be applied to traffic.
  /// [name] The unique name for the rule.
  /// [nextStepIfMatched] Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  RouteMapRule({
    this.actions,
    this.matchCriteria,
    this.name,
    this.nextStepIfMatched,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<Action, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'matchCriteria': ?matchCriteria == null ? null : pulumi.Input.encodeList<Criterion, Map<String, dynamic>>(matchCriteria!, (value) => value.toMap()),
      'name': ?name,
      'nextStepIfMatched': ?nextStepIfMatched,
    };
  }

  factory RouteMapRule.fromMap(Map<String, dynamic> map) {
    return RouteMapRule(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<Action>(map['actions'], (value) => Action.fromMap((value as Map).cast<String, dynamic>())),
      matchCriteria: map['matchCriteria'] == null ? null : pulumi.Input.decodeList<Criterion>(map['matchCriteria'], (value) => Criterion.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      nextStepIfMatched: map['nextStepIfMatched'] == null ? null : map['nextStepIfMatched'] as String,
    );
  }
}

