// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action_networkservices_v1beta1.dart';
import 'tls_route_route_match_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRuleNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TlsRouteRouteActionNetworkservicesV1beta1> action;
  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final pulumi.Input<List<TlsRouteRouteMatchNetworkservicesV1beta1>> matches;

  /// Creates a new [TlsRouteRouteRuleNetworkservicesV1beta1].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  TlsRouteRouteRuleNetworkservicesV1beta1({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TlsRouteRouteActionNetworkservicesV1beta1, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<TlsRouteRouteMatchNetworkservicesV1beta1>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TlsRouteRouteMatchNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteRuleNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRuleNetworkservicesV1beta1(
      action: pulumi.Input.fromValue(TlsRouteRouteActionNetworkservicesV1beta1.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteMatchNetworkservicesV1beta1>(map['matches']!, (value) => TlsRouteRouteMatchNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

