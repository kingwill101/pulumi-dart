// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_action_response.dart';
import 'tcp_route_route_match_response.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRuleResponse {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TcpRouteRouteActionResponse> action;
  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final pulumi.Input<List<TcpRouteRouteMatchResponse>> matches;

  /// Creates a new [TcpRouteRouteRuleResponse].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  const TcpRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TcpRouteRouteActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<TcpRouteRouteMatchResponse>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TcpRouteRouteMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TcpRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteRuleResponse(
      action: pulumi.Input.fromValue(TcpRouteRouteActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<TcpRouteRouteMatchResponse>(map['matches']!, (value) => TcpRouteRouteMatchResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
