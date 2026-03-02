// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_action.dart';
import 'http_route_route_match.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  final pulumi.Input<HttpRouteRouteAction>? action;
  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final pulumi.Input<List<HttpRouteRouteMatch>>? matches;

  /// Creates a new [HttpRouteRouteRule].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  HttpRouteRouteRule({
    this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<HttpRouteRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<HttpRouteRouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteRule(
      action: map['action'] == null ? null : (HttpRouteRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      matches: map['matches'] == null ? null : (pulumi.Input.decodeList<HttpRouteRouteMatch>(map['matches'], (value) => HttpRouteRouteMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

