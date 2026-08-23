// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action.dart';
import 'tls_route_route_match.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TlsRouteRouteAction> action;
  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final pulumi.Input<List<TlsRouteRouteMatch>> matches;

  /// Creates a new [TlsRouteRouteRule].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  const TlsRouteRouteRule({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TlsRouteRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<TlsRouteRouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TlsRouteRouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRule(
      action: pulumi.Input.fromValue(TlsRouteRouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteMatch>(map['matches']!, (value) => TlsRouteRouteMatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
