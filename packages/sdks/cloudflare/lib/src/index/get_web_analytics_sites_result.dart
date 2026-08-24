// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_analytics_sites_result_rule.dart';
import 'get_web_analytics_sites_result_ruleset.dart';

class GetWebAnalyticsSitesResult {
  /// If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  final pulumi.Input<bool> autoInstall;
  final pulumi.Input<String> created;
  /// The Web Analytics site identifier.
  final pulumi.Input<String> id;
  /// A list of rules.
  final pulumi.Input<List<GetWebAnalyticsSitesResultRule>> rules;
  final pulumi.Input<GetWebAnalyticsSitesResultRuleset> ruleset;
  /// The Web Analytics site identifier.
  final pulumi.Input<String> siteTag;
  /// The Web Analytics site token.
  final pulumi.Input<String> siteToken;
  /// Encoded JavaScript snippet.
  final pulumi.Input<String> snippet;

  /// Creates a new [GetWebAnalyticsSitesResult].
  /// [autoInstall] If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  /// [created] Required.
  /// [id] The Web Analytics site identifier.
  /// [rules] A list of rules.
  /// [ruleset] Required.
  /// [siteTag] The Web Analytics site identifier.
  /// [siteToken] The Web Analytics site token.
  /// [snippet] Encoded JavaScript snippet.
  const GetWebAnalyticsSitesResult({
    required this.autoInstall,
    required this.created,
    required this.id,
    required this.rules,
    required this.ruleset,
    required this.siteTag,
    required this.siteToken,
    required this.snippet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInstall': autoInstall,
      'created': created,
      'id': id,
      'rules': pulumi.Input.mapInputValue<List<GetWebAnalyticsSitesResultRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetWebAnalyticsSitesResultRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleset': pulumi.Input.mapInputValue<GetWebAnalyticsSitesResultRuleset, Map<String, dynamic>>(ruleset, (value) => value.toMap()),
      'siteTag': siteTag,
      'siteToken': siteToken,
      'snippet': snippet,
    };
  }

  factory GetWebAnalyticsSitesResult.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSitesResult(
      autoInstall: pulumi.Input.fromValue(map['autoInstall'] as bool),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWebAnalyticsSitesResultRule>(map['rules']!, (value) => GetWebAnalyticsSitesResultRule.fromMap((value as Map).cast<String, dynamic>()))),
      ruleset: pulumi.Input.fromValue(GetWebAnalyticsSitesResultRuleset.fromMap((map['ruleset']! as Map).cast<String, dynamic>())),
      siteTag: pulumi.Input.fromValue(map['siteTag'] as String),
      siteToken: pulumi.Input.fromValue(map['siteToken'] as String),
      snippet: pulumi.Input.fromValue(map['snippet'] as String),
    );
  }
}
