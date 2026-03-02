// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_rule_action.dart';
import 'tcp_route_rule_match.dart';

class TcpRouteRule {
  /// A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final pulumi.Input<TcpRouteRuleAction> action;
  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  /// If no routeMatch field is specified, this rule will unconditionally match traffic.
  /// Structure is documented below.
  final pulumi.Input<List<TcpRouteRuleMatch>>? matches;

  /// Creates a new [TcpRouteRule].
  /// [action] A detailed rule defining how to route traffic.
  /// [matches] RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  TcpRouteRule({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TcpRouteRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<TcpRouteRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TcpRouteRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TcpRouteRule.fromMap(Map<String, dynamic> map) {
    return TcpRouteRule(
      action: (TcpRouteRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      matches: map['matches'] == null ? null : (pulumi.Input.decodeList<TcpRouteRuleMatch>(map['matches'], (value) => TcpRouteRuleMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

