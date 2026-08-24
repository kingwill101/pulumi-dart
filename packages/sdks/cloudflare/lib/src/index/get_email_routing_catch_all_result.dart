// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_catch_all_action.dart';
import 'get_email_routing_catch_all_matcher.dart';

/// Result data returned by getEmailRoutingCatchAll.
class GetEmailRoutingCatchAllResult {
  /// List actions for the catch-all routing rule.
  final List<GetEmailRoutingCatchAllAction>? actions;
  /// Routing rule status.
  final bool? enabled;
  /// Identifier.
  final String? id;
  /// List of matchers for the catch-all routing rule.
  final List<GetEmailRoutingCatchAllMatcher>? matchers;
  /// Routing rule name.
  final String? name;
  /// Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// `wrangler` means the rule is managed by a Worker's wrangler.jsonc. Defaults
  /// to `api` when omitted on write.
  /// Available values: "api", "wrangler".
  final String? source;
  /// Routing rule tag. (Deprecated, replaced by routing rule identifier)
  final String? tag;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailRoutingCatchAllResult].
  /// [actions] List actions for the catch-all routing rule.
  /// [enabled] Routing rule status.
  /// [id] Identifier.
  /// [matchers] List of matchers for the catch-all routing rule.
  /// [name] Routing rule name.
  /// [source] Who manages the rule. `api` covers dashboard, generic API, and Terraform;
  /// [tag] Routing rule tag. (Deprecated, replaced by routing rule identifier)
  /// [zoneId] Identifier.
  const GetEmailRoutingCatchAllResult({
    this.actions,
    this.enabled,
    this.id,
    this.matchers,
    this.name,
    this.source,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingCatchAllAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'id': ?id,
      'matchers': ?(() { final guardedValue = matchers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingCatchAllMatcher, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'source': ?source,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingCatchAllResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingCatchAllResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingCatchAllAction>(guardedValue, (value) => GetEmailRoutingCatchAllAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchers: (() { final guardedValue = map['matchers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingCatchAllMatcher>(guardedValue, (value) => GetEmailRoutingCatchAllMatcher.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
