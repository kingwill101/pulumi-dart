// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';
import 'criterion.dart';

/// A RouteMap Rule.
class RouteMapRule {
  /// List of actions which will be applied on a match.
  final pulumi.Input<List<Action>>? actions;

  /// List of matching criterion which will be applied to traffic.
  final pulumi.Input<List<Criterion>>? matchCriteria;

  /// The unique name for the rule.
  final pulumi.Input<String>? name;

  /// Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  final pulumi.Input<String>? nextStepIfMatched;

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
      'actions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Action>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) => pulumi.Input.encodeList<Action, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'matchCriteria':
          ?pulumi.Input.mapOptionalInputValue<
            List<Criterion>,
            List<Map<String, dynamic>>
          >(
            matchCriteria,
            (value) => pulumi.Input.encodeList<Criterion, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'name': ?name,
      'nextStepIfMatched': ?nextStepIfMatched,
    };
  }

  factory RouteMapRule.fromMap(Map<String, dynamic> map) {
    return RouteMapRule(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Action>(
            guardedValue,
            (value) => Action.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      matchCriteria: (() {
        final guardedValue = map['matchCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Criterion>(
            guardedValue,
            (value) =>
                Criterion.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextStepIfMatched: (() {
        final guardedValue = map['nextStepIfMatched'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
