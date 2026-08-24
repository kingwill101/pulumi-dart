// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_rule_action.dart';
import 'get_email_routing_rule_filter.dart';
import 'get_email_routing_rule_matcher.dart';

/// Result data returned by getEmailRoutingRule.
class GetEmailRoutingRuleResult {
  /// List actions patterns.
  final List<GetEmailRoutingRuleAction>? actions;
  /// Routing rule status.
  final bool? enabled;
  final GetEmailRoutingRuleFilter? filter;
  /// Routing rule identifier.
  final String? id;
  /// Matching patterns to forward to your actions.
  final List<GetEmailRoutingRuleMatcher>? matchers;
  /// Routing rule name.
  final String? name;
  /// Priority of the routing rule.
  final double? priority;
  /// Routing rule identifier.
  final String? ruleIdentifier;
  /// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
  /// to `api` when omitted on write.
  /// Available values: "api", "wrangler".
  final String? source;
  /// Routing rule tag. (Deprecated, replaced by routing rule identifier)
  final String? tag;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailRoutingRuleResult].
  /// [actions] List actions patterns.
  /// [enabled] Routing rule status.
  /// [filter] Optional.
  /// [id] Routing rule identifier.
  /// [matchers] Matching patterns to forward to your actions.
  /// [name] Routing rule name.
  /// [priority] Priority of the routing rule.
  /// [ruleIdentifier] Routing rule identifier.
  /// [source] Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// [tag] Routing rule tag. (Deprecated, replaced by routing rule identifier)
  /// [zoneId] Identifier.
  const GetEmailRoutingRuleResult({
    this.actions,
    this.enabled,
    this.filter,
    this.id,
    this.matchers,
    this.name,
    this.priority,
    this.ruleIdentifier,
    this.source,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingRuleAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'matchers': ?(() { final guardedValue = matchers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingRuleMatcher, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'priority': ?priority,
      'ruleIdentifier': ?ruleIdentifier,
      'source': ?source,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRuleResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingRuleAction>(guardedValue, (value) => GetEmailRoutingRuleAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEmailRoutingRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchers: (() { final guardedValue = map['matchers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingRuleMatcher>(guardedValue, (value) => GetEmailRoutingRuleMatcher.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      ruleIdentifier: (() { final guardedValue = map['ruleIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
