// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_action_response_networkservices_v1beta1.dart';
import 'grpc_route_route_match_response_networkservices_v1beta1.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRuleResponseNetworkservicesV1beta1 {
  /// A detailed rule defining how to route traffic. This field is required.
  final pulumi.Input<GrpcRouteRouteActionResponseNetworkservicesV1beta1> action;
  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final pulumi.Input<List<GrpcRouteRouteMatchResponseNetworkservicesV1beta1>> matches;

  /// Creates a new [GrpcRouteRouteRuleResponseNetworkservicesV1beta1].
  /// [action] A detailed rule defining how to route traffic. This field is required.
  /// [matches] Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  const GrpcRouteRouteRuleResponseNetworkservicesV1beta1({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GrpcRouteRouteActionResponseNetworkservicesV1beta1, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<GrpcRouteRouteMatchResponseNetworkservicesV1beta1>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GrpcRouteRouteMatchResponseNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GrpcRouteRouteRuleResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteRuleResponseNetworkservicesV1beta1(
      action: pulumi.Input.fromValue(GrpcRouteRouteActionResponseNetworkservicesV1beta1.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteRouteMatchResponseNetworkservicesV1beta1>(map['matches']!, (value) => GrpcRouteRouteMatchResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

