// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_rule_action.dart';
import 'email_routing_rule_matcher.dart';

/// {@template pulumi_index_email_routing_rule_email_routing_rule_args_doc}
/// The set of arguments for EmailRoutingRule.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_rule_email_routing_rule_args_doc}
class EmailRoutingRuleArgs {
  /// List actions patterns.
  final pulumi.Input<List<EmailRoutingRuleAction>> actions;
  /// Routing rule status.
  final pulumi.Input<bool?>? enabled;
  /// Matching patterns to forward to your actions.
  final pulumi.Input<List<EmailRoutingRuleMatcher>> matchers;
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
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailRoutingRuleArgs].
  /// [actions] List actions patterns.
  /// [enabled] Routing rule status.
  /// [matchers] Matching patterns to forward to your actions.
  /// [name] Routing rule name.
  /// [ownerWorkerTag] Public tag (script_tag) of the Worker that owns this rule. Required when
  /// [priority] Priority of the routing rule.
  /// [source] Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// [zoneId] Identifier.
  const EmailRoutingRuleArgs({
    required this.actions,
    this.enabled,
    required this.matchers,
    this.name,
    this.ownerWorkerTag,
    this.priority,
    this.source,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<EmailRoutingRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<EmailRoutingRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'matchers': pulumi.Input.mapInputValue<List<EmailRoutingRuleMatcher>, List<Map<String, dynamic>>>(matchers, (value) => pulumi.Input.encodeList<EmailRoutingRuleMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ownerWorkerTag': ?ownerWorkerTag,
      'priority': ?priority,
      'source': ?source,
      'zoneId': zoneId,
    };
  }

  factory EmailRoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingRuleArgs(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingRuleAction>(map['actions']!, (value) => EmailRoutingRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchers: pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingRuleMatcher>(map['matchers']!, (value) => EmailRoutingRuleMatcher.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerWorkerTag: (() { final guardedValue = map['ownerWorkerTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
