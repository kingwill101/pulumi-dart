// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_catch_all_action.dart';
import 'email_routing_catch_all_matcher.dart';

/// {@template pulumi_index_email_routing_catch_all_email_routing_catch_all_args_doc}
/// The set of arguments for EmailRoutingCatchAll.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_catch_all_email_routing_catch_all_args_doc}
class EmailRoutingCatchAllArgs {
  /// List actions for the catch-all routing rule.
  final pulumi.Input<List<EmailRoutingCatchAllAction>> actions;
  /// Routing rule status.
  final pulumi.Input<bool?>? enabled;
  /// List of matchers for the catch-all routing rule.
  final pulumi.Input<List<EmailRoutingCatchAllMatcher>> matchers;
  /// Routing rule name.
  final pulumi.Input<String?>? name;
  /// Public tag (script_tag) of the Worker that owns this rule. Required when
  /// `source` is `wrangler`.
  final pulumi.Input<String?>? ownerWorkerTag;
  /// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
  /// to `api` when omitted on write.
  /// Available values: "api", "wrangler".
  final pulumi.Input<String?>? source;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailRoutingCatchAllArgs].
  /// [actions] List actions for the catch-all routing rule.
  /// [enabled] Routing rule status.
  /// [matchers] List of matchers for the catch-all routing rule.
  /// [name] Routing rule name.
  /// [ownerWorkerTag] Public tag (script_tag) of the Worker that owns this rule. Required when
  /// [source] Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// [zoneId] Identifier.
  const EmailRoutingCatchAllArgs({
    required this.actions,
    this.enabled,
    required this.matchers,
    this.name,
    this.ownerWorkerTag,
    this.source,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<EmailRoutingCatchAllAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<EmailRoutingCatchAllAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'matchers': pulumi.Input.mapInputValue<List<EmailRoutingCatchAllMatcher>, List<Map<String, dynamic>>>(matchers, (value) => pulumi.Input.encodeList<EmailRoutingCatchAllMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ownerWorkerTag': ?ownerWorkerTag,
      'source': ?source,
      'zoneId': zoneId,
    };
  }

  factory EmailRoutingCatchAllArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingCatchAllArgs(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingCatchAllAction>(map['actions']!, (value) => EmailRoutingCatchAllAction.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchers: pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingCatchAllMatcher>(map['matchers']!, (value) => EmailRoutingCatchAllMatcher.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerWorkerTag: (() { final guardedValue = map['ownerWorkerTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
