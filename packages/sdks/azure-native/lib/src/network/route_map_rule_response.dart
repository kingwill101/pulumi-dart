// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'criterion_response.dart';

/// A RouteMap Rule.
class RouteMapRuleResponse {
  /// List of actions which will be applied on a match.
  final pulumi.Input<List<ActionResponse>?>? actions;
  /// List of matching criterion which will be applied to traffic.
  final pulumi.Input<List<CriterionResponse>?>? matchCriteria;
  /// The unique name for the rule.
  final pulumi.Input<String?>? name;
  /// Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  final pulumi.Input<String?>? nextStepIfMatched;

  /// Creates a new [RouteMapRuleResponse].
  /// [actions] List of actions which will be applied on a match.
  /// [matchCriteria] List of matching criterion which will be applied to traffic.
  /// [name] The unique name for the rule.
  /// [nextStepIfMatched] Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  const RouteMapRuleResponse({
    this.actions,
    this.matchCriteria,
    this.name,
    this.nextStepIfMatched,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchCriteria': ?pulumi.Input.mapOptionalInputValue<List<CriterionResponse>, List<Map<String, dynamic>>>(matchCriteria, (value) => pulumi.Input.encodeList<CriterionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nextStepIfMatched': ?nextStepIfMatched,
    };
  }

  factory RouteMapRuleResponse.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActionResponse>(guardedValue, (value) => ActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchCriteria: (() { final guardedValue = map['matchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CriterionResponse>(guardedValue, (value) => CriterionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextStepIfMatched: (() { final guardedValue = map['nextStepIfMatched']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
