// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_action_response.dart';
import 'http_route_route_match_response.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRuleResponse {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<HttpRouteRouteActionResponse> action;
  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final pulumi.Input<List<HttpRouteRouteMatchResponse>> matches;

  /// Creates a new [HttpRouteRouteRuleResponse].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  HttpRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<HttpRouteRouteActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<HttpRouteRouteMatchResponse>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<HttpRouteRouteMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteRuleResponse(
      action: (HttpRouteRouteActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      matches: (pulumi.Input.decodeList<HttpRouteRouteMatchResponse>(map['matches'], (value) => HttpRouteRouteMatchResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

