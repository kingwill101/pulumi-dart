// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_rules_result_action.dart';
import 'get_email_routing_rules_result_matcher.dart';

class GetEmailRoutingRulesResult {
  /// List actions patterns.
  final pulumi.Input<List<GetEmailRoutingRulesResultAction>> actions;
  /// Routing rule status.
  final pulumi.Input<bool> enabled;
  /// Routing rule identifier.
  final pulumi.Input<String> id;
  /// Matching patterns to forward to your actions.
  final pulumi.Input<List<GetEmailRoutingRulesResultMatcher>> matchers;
  /// Routing rule name.
  final pulumi.Input<String> name;
  /// Priority of the routing rule.
  final pulumi.Input<double> priority;
  /// Routing rule tag. (Deprecated, replaced by routing rule identifier)
  final pulumi.Input<String> tag;

  /// Creates a new [GetEmailRoutingRulesResult].
  /// [actions] List actions patterns.
  /// [enabled] Routing rule status.
  /// [id] Routing rule identifier.
  /// [matchers] Matching patterns to forward to your actions.
  /// [name] Routing rule name.
  /// [priority] Priority of the routing rule.
  /// [tag] Routing rule tag. (Deprecated, replaced by routing rule identifier)
  const GetEmailRoutingRulesResult({
    required this.actions,
    required this.enabled,
    required this.id,
    required this.matchers,
    required this.name,
    required this.priority,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetEmailRoutingRulesResultAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetEmailRoutingRulesResultAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'id': id,
      'matchers': pulumi.Input.mapInputValue<List<GetEmailRoutingRulesResultMatcher>, List<Map<String, dynamic>>>(matchers, (value) => pulumi.Input.encodeList<GetEmailRoutingRulesResultMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'priority': priority,
      'tag': tag,
    };
  }

  factory GetEmailRoutingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRulesResult(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEmailRoutingRulesResultAction>(map['actions']!, (value) => GetEmailRoutingRulesResultAction.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      matchers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEmailRoutingRulesResultMatcher>(map['matchers']!, (value) => GetEmailRoutingRulesResultMatcher.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
