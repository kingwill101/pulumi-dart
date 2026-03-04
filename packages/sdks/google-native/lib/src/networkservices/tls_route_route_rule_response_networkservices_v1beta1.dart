// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action_response_networkservices_v1beta1.dart';
import 'tls_route_route_match_response_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRuleResponseNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<TlsRouteRouteActionResponseNetworkservicesV1beta1> action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final pulumi.Input<List<TlsRouteRouteMatchResponseNetworkservicesV1beta1>>
  matches;

  /// Creates a new [TlsRouteRouteRuleResponseNetworkservicesV1beta1].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  TlsRouteRouteRuleResponseNetworkservicesV1beta1({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            TlsRouteRouteActionResponseNetworkservicesV1beta1,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'matches':
          pulumi.Input.mapInputValue<
            List<TlsRouteRouteMatchResponseNetworkservicesV1beta1>,
            List<Map<String, dynamic>>
          >(
            matches,
            (value) =>
                pulumi.Input.encodeList<
                  TlsRouteRouteMatchResponseNetworkservicesV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TlsRouteRouteRuleResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return TlsRouteRouteRuleResponseNetworkservicesV1beta1(
      action: pulumi.Input.fromValue(
        TlsRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
          (map['action']! as Map).cast<String, dynamic>(),
        ),
      ),
      matches: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<TlsRouteRouteMatchResponseNetworkservicesV1beta1>(
          map['matches']!,
          (value) => TlsRouteRouteMatchResponseNetworkservicesV1beta1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
