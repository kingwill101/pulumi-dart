// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_action.dart';
import 'tcp_route_route_match.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TcpRouteRouteAction> action;
  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final pulumi.Input<List<TcpRouteRouteMatch>>? matches;

  /// Creates a new [TcpRouteRouteRule].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  TcpRouteRouteRule({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TcpRouteRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<TcpRouteRouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TcpRouteRouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TcpRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteRule(
      action: (TcpRouteRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      matches: map['matches'] == null ? null : (pulumi.Input.decodeList<TcpRouteRouteMatch>(map['matches'], (value) => TcpRouteRouteMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

