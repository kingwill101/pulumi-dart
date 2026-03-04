// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_action_networkservices_v1beta1.dart';
import 'grpc_route_route_match_networkservices_v1beta1.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRuleNetworkservicesV1beta1 {
  /// A detailed rule defining how to route traffic. This field is required.
  final pulumi.Input<GrpcRouteRouteActionNetworkservicesV1beta1> action;

  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final pulumi.Input<List<GrpcRouteRouteMatchNetworkservicesV1beta1>>? matches;

  /// Creates a new [GrpcRouteRouteRuleNetworkservicesV1beta1].
  /// [action] A detailed rule defining how to route traffic. This field is required.
  /// [matches] Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  GrpcRouteRouteRuleNetworkservicesV1beta1({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            GrpcRouteRouteActionNetworkservicesV1beta1,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'matches':
          ?pulumi.Input.mapOptionalInputValue<
            List<GrpcRouteRouteMatchNetworkservicesV1beta1>,
            List<Map<String, dynamic>>
          >(
            matches,
            (value) =>
                pulumi.Input.encodeList<
                  GrpcRouteRouteMatchNetworkservicesV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GrpcRouteRouteRuleNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrpcRouteRouteRuleNetworkservicesV1beta1(
      action: pulumi.Input.fromValue(
        GrpcRouteRouteActionNetworkservicesV1beta1.fromMap(
          (map['action']! as Map).cast<String, dynamic>(),
        ),
      ),
      matches: (() {
        final guardedValue = map['matches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GrpcRouteRouteMatchNetworkservicesV1beta1>(
            guardedValue,
            (value) => GrpcRouteRouteMatchNetworkservicesV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
