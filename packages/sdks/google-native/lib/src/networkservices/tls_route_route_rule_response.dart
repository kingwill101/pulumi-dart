// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action_response.dart';
import 'tls_route_route_match_response.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRuleResponse {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TlsRouteRouteActionResponse> action;
  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final pulumi.Input<List<TlsRouteRouteMatchResponse>> matches;

  /// Creates a new [TlsRouteRouteRuleResponse].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  const TlsRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TlsRouteRouteActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<TlsRouteRouteMatchResponse>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TlsRouteRouteMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRuleResponse(
      action: pulumi.Input.fromValue(TlsRouteRouteActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteMatchResponse>(map['matches']!, (value) => TlsRouteRouteMatchResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
