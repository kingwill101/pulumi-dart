// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_action.dart';
import 'grpc_route_route_match.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRule {
  /// A detailed rule defining how to route traffic. This field is required.
  final GrpcRouteRouteAction action;
  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final List<GrpcRouteRouteMatch>? matches;

  /// Creates a new [GrpcRouteRouteRule].
  /// [action] A detailed rule defining how to route traffic. This field is required.
  /// [matches] Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  GrpcRouteRouteRule({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'matches': ?matches == null ? null : pulumi.Input.encodeList<GrpcRouteRouteMatch, Map<String, dynamic>>(matches!, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteRule(
      action: GrpcRouteRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null ? null : pulumi.Input.decodeList<GrpcRouteRouteMatch>(map['matches'], (value) => GrpcRouteRouteMatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

