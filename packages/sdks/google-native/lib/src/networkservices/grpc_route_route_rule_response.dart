// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_action_response.dart';
import 'grpc_route_route_match_response.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRuleResponse {
  /// A detailed rule defining how to route traffic. This field is required.
  final pulumi.Input<GrpcRouteRouteActionResponse> action;
  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final pulumi.Input<List<GrpcRouteRouteMatchResponse>> matches;

  /// Creates a new [GrpcRouteRouteRuleResponse].
  /// [action] A detailed rule defining how to route traffic. This field is required.
  /// [matches] Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  const GrpcRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GrpcRouteRouteActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<GrpcRouteRouteMatchResponse>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GrpcRouteRouteMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GrpcRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteRuleResponse(
      action: pulumi.Input.fromValue(GrpcRouteRouteActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteRouteMatchResponse>(map['matches']!, (value) => GrpcRouteRouteMatchResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
