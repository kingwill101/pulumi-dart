// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_rule_action.dart';
import 'email_routing_rule_matcher.dart';

/// Input properties used for looking up and filtering EmailRoutingRule resources.
class EmailRoutingRuleState {
  /// List actions patterns.
  final pulumi.Input<List<EmailRoutingRuleAction>?>? actions;
  /// Routing rule status.
  final pulumi.Input<bool?>? enabled;
  /// Matching patterns to forward to your actions.
  final pulumi.Input<List<EmailRoutingRuleMatcher>?>? matchers;
  /// Routing rule name.
  final pulumi.Input<String?>? name;
  /// Public tag (script_tag) of the Worker that owns this rule. Required when
  /// `source` is `wrangler`.
  final pulumi.Input<String?>? ownerWorkerTag;
  /// Priority of the routing rule.
  final pulumi.Input<double?>? priority;
  /// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
  /// to `api` when omitted on write.
  /// Available values: "api", "wrangler".
  final pulumi.Input<String?>? source;
  /// Routing rule tag. (Deprecated, replaced by routing rule identifier)
  final pulumi.Input<String?>? tag;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [EmailRoutingRuleState].
  /// [actions] List actions patterns.
  /// [enabled] Routing rule status.
  /// [matchers] Matching patterns to forward to your actions.
  /// [name] Routing rule name.
  /// [ownerWorkerTag] Public tag (script_tag) of the Worker that owns this rule. Required when
  /// [priority] Priority of the routing rule.
  /// [source] Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// [tag] Routing rule tag. (Deprecated, replaced by routing rule identifier)
  /// [zoneId] Identifier.
  const EmailRoutingRuleState({
    this.actions,
    this.enabled,
    this.matchers,
    this.name,
    this.ownerWorkerTag,
    this.priority,
    this.source,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<EmailRoutingRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<EmailRoutingRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'matchers': ?pulumi.Input.mapOptionalInputValue<List<EmailRoutingRuleMatcher>, List<Map<String, dynamic>>>(matchers, (value) => pulumi.Input.encodeList<EmailRoutingRuleMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ownerWorkerTag': ?ownerWorkerTag,
      'priority': ?priority,
      'source': ?source,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory EmailRoutingRuleState.fromMap(Map<String, dynamic> map) {
    return EmailRoutingRuleState(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingRuleAction>(guardedValue, (value) => EmailRoutingRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchers: (() { final guardedValue = map['matchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingRuleMatcher>(guardedValue, (value) => EmailRoutingRuleMatcher.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerWorkerTag: (() { final guardedValue = map['ownerWorkerTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
