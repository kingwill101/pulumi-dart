// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_action_networkservices_v1beta1.dart';
import 'tcp_route_route_match_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRuleNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TcpRouteRouteActionNetworkservicesV1beta1> action;
  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final pulumi.Input<List<TcpRouteRouteMatchNetworkservicesV1beta1>>? matches;

  /// Creates a new [TcpRouteRouteRuleNetworkservicesV1beta1].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  TcpRouteRouteRuleNetworkservicesV1beta1({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TcpRouteRouteActionNetworkservicesV1beta1, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<TcpRouteRouteMatchNetworkservicesV1beta1>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TcpRouteRouteMatchNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TcpRouteRouteRuleNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteRuleNetworkservicesV1beta1(
      action: (TcpRouteRouteActionNetworkservicesV1beta1.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      matches: map['matches'] == null ? null : (pulumi.Input.decodeList<TcpRouteRouteMatchNetworkservicesV1beta1>(map['matches']!, (value) => TcpRouteRouteMatchNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

