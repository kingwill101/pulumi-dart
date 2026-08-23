// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_rule_action.dart';
import 'tls_route_rule_match.dart';

class TlsRouteRule {
  /// Required. A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final pulumi.Input<TlsRouteRuleAction> action;
  /// Matches define the predicate used to match requests to a given action.
  /// Structure is documented below.
  final pulumi.Input<List<TlsRouteRuleMatch>> matches;

  /// Creates a new [TlsRouteRule].
  /// [action] Required. A detailed rule defining how to route traffic.
  /// [matches] Matches define the predicate used to match requests to a given action.
  const TlsRouteRule({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<TlsRouteRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<TlsRouteRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<TlsRouteRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRule.fromMap(Map<String, dynamic> map) {
    return TlsRouteRule(
      action: pulumi.Input.fromValue(TlsRouteRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRuleMatch>(map['matches']!, (value) => TlsRouteRuleMatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
