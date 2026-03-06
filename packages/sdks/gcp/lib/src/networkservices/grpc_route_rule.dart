// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_action.dart';
import 'grpc_route_rule_match.dart';

class GrpcRouteRule {
  /// Required. A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleAction>? action;
  /// Matches define conditions used for matching the rule against incoming gRPC requests.
  /// Structure is documented below.
  final pulumi.Input<List<GrpcRouteRuleMatch>>? matches;

  /// Creates a new [GrpcRouteRule].
  /// [action] Required. A detailed rule defining how to route traffic.
  /// [matches] Matches define conditions used for matching the rule against incoming gRPC requests.
  const GrpcRouteRule({
    this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GrpcRouteRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GrpcRouteRule.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matches: (() { final guardedValue = map['matches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteRuleMatch>(guardedValue, (value) => GrpcRouteRuleMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

