// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_analytics_site_filter.dart';
import 'get_web_analytics_site_rule.dart';
import 'get_web_analytics_site_ruleset.dart';

/// Result data returned by getWebAnalyticsSite.
class GetWebAnalyticsSiteResult {
  /// Identifier.
  final String? accountId;
  /// If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  final bool? autoInstall;
  final String? created;
  final GetWebAnalyticsSiteFilter? filter;
  /// Identifier.
  final String? id;
  /// A list of rules.
  final List<GetWebAnalyticsSiteRule>? rules;
  final GetWebAnalyticsSiteRuleset? ruleset;
  /// Identifier.
  final String? siteId;
  /// The Web Analytics site identifier.
  final String? siteTag;
  /// The Web Analytics site token.
  final String? siteToken;
  /// Encoded JavaScript snippet.
  final String? snippet;

  /// Creates a new [GetWebAnalyticsSiteResult].
  /// [accountId] Identifier.
  /// [autoInstall] If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  /// [created] Optional.
  /// [filter] Optional.
  /// [id] Identifier.
  /// [rules] A list of rules.
  /// [ruleset] Optional.
  /// [siteId] Identifier.
  /// [siteTag] The Web Analytics site identifier.
  /// [siteToken] The Web Analytics site token.
  /// [snippet] Encoded JavaScript snippet.
  const GetWebAnalyticsSiteResult({
    this.accountId,
    this.autoInstall,
    this.created,
    this.filter,
    this.id,
    this.rules,
    this.ruleset,
    this.siteId,
    this.siteTag,
    this.siteToken,
    this.snippet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'autoInstall': ?autoInstall,
      'created': ?created,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWebAnalyticsSiteRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ruleset': ?ruleset?.toMap(),
      'siteId': ?siteId,
      'siteTag': ?siteTag,
      'siteToken': ?siteToken,
      'snippet': ?snippet,
    };
  }

  factory GetWebAnalyticsSiteResult.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSiteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoInstall: (() { final guardedValue = map['autoInstall']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetWebAnalyticsSiteFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWebAnalyticsSiteRule>(guardedValue, (value) => GetWebAnalyticsSiteRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      ruleset: (() { final guardedValue = map['ruleset']; if (guardedValue == null) return null; return GetWebAnalyticsSiteRuleset.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteTag: (() { final guardedValue = map['siteTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteToken: (() { final guardedValue = map['siteToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snippet: (() { final guardedValue = map['snippet']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
