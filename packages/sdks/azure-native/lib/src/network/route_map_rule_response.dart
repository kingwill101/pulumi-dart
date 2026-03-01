// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'criterion_response.dart';

/// A RouteMap Rule.
class RouteMapRuleResponse {
  /// List of actions which will be applied on a match.
  final List<ActionResponse>? actions;
  /// List of matching criterion which will be applied to traffic.
  final List<CriterionResponse>? matchCriteria;
  /// The unique name for the rule.
  final String? name;
  /// Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  final String? nextStepIfMatched;

  /// Creates a new [RouteMapRuleResponse].
  /// [actions] List of actions which will be applied on a match.
  /// [matchCriteria] List of matching criterion which will be applied to traffic.
  /// [name] The unique name for the rule.
  /// [nextStepIfMatched] Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
  RouteMapRuleResponse({
    this.actions,
    this.matchCriteria,
    this.name,
    this.nextStepIfMatched,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<ActionResponse, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'matchCriteria': ?matchCriteria == null ? null : pulumi.Input.encodeList<CriterionResponse, Map<String, dynamic>>(matchCriteria!, (value) => value.toMap()),
      'name': ?name,
      'nextStepIfMatched': ?nextStepIfMatched,
    };
  }

  factory RouteMapRuleResponse.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleResponse(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<ActionResponse>(map['actions'], (value) => ActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      matchCriteria: map['matchCriteria'] == null ? null : pulumi.Input.decodeList<CriterionResponse>(map['matchCriteria'], (value) => CriterionResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      nextStepIfMatched: map['nextStepIfMatched'] == null ? null : map['nextStepIfMatched'] as String,
    );
  }
}

