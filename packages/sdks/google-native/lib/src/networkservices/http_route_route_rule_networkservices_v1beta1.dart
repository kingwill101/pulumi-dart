// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_action_networkservices_v1beta1.dart';
import 'http_route_route_match_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRuleNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<HttpRouteRouteActionNetworkservicesV1beta1>? action;
  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final pulumi.Input<List<HttpRouteRouteMatchNetworkservicesV1beta1>>? matches;

  /// Creates a new [HttpRouteRouteRuleNetworkservicesV1beta1].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  HttpRouteRouteRuleNetworkservicesV1beta1({
    this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<HttpRouteRouteActionNetworkservicesV1beta1, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRouteMatchNetworkservicesV1beta1>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<HttpRouteRouteMatchNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteRouteRuleNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteRuleNetworkservicesV1beta1(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteRouteActionNetworkservicesV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matches: (() { final guardedValue = map['matches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteRouteMatchNetworkservicesV1beta1>(guardedValue, (value) => HttpRouteRouteMatchNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

