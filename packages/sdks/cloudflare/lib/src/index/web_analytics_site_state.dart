// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_analytics_site_rule.dart';
import 'web_analytics_site_ruleset.dart';

/// Input properties used for looking up and filtering WebAnalyticsSite resources.
class WebAnalyticsSiteState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  final pulumi.Input<bool?>? autoInstall;
  final pulumi.Input<String?>? created;
  /// Enables or disables RUM. This option can be used only when autoInstall is set to true.
  final pulumi.Input<bool?>? enabled;
  /// The hostname to use for gray-clouded sites.
  final pulumi.Input<String?>? host;
  /// If enabled, the JavaScript snippet will not be injected for visitors from the EU.
  final pulumi.Input<bool?>? lite;
  /// A list of rules.
  final pulumi.Input<List<WebAnalyticsSiteRule>?>? rules;
  final pulumi.Input<WebAnalyticsSiteRuleset?>? ruleset;
  /// The Web Analytics site identifier.
  final pulumi.Input<String?>? siteTag;
  /// The Web Analytics site token.
  final pulumi.Input<String?>? siteToken;
  /// Encoded JavaScript snippet.
  final pulumi.Input<String?>? snippet;
  /// The zone identifier.
  final pulumi.Input<String?>? zoneTag;

  /// Creates a new [WebAnalyticsSiteState].
  /// [accountId] Identifier.
  /// [autoInstall] If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  /// [created] Optional.
  /// [enabled] Enables or disables RUM. This option can be used only when autoInstall is set to true.
  /// [host] The hostname to use for gray-clouded sites.
  /// [lite] If enabled, the JavaScript snippet will not be injected for visitors from the EU.
  /// [rules] A list of rules.
  /// [ruleset] Optional.
  /// [siteTag] The Web Analytics site identifier.
  /// [siteToken] The Web Analytics site token.
  /// [snippet] Encoded JavaScript snippet.
  /// [zoneTag] The zone identifier.
  const WebAnalyticsSiteState({
    this.accountId,
    this.autoInstall,
    this.created,
    this.enabled,
    this.host,
    this.lite,
    this.rules,
    this.ruleset,
    this.siteTag,
    this.siteToken,
    this.snippet,
    this.zoneTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'autoInstall': ?autoInstall,
      'created': ?created,
      'enabled': ?enabled,
      'host': ?host,
      'lite': ?lite,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<WebAnalyticsSiteRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WebAnalyticsSiteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleset': ?pulumi.Input.mapOptionalInputValue<WebAnalyticsSiteRuleset, Map<String, dynamic>>(ruleset, (value) => value.toMap()),
      'siteTag': ?siteTag,
      'siteToken': ?siteToken,
      'snippet': ?snippet,
      'zoneTag': ?zoneTag,
    };
  }

  factory WebAnalyticsSiteState.fromMap(Map<String, dynamic> map) {
    return WebAnalyticsSiteState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoInstall: (() { final guardedValue = map['autoInstall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lite: (() { final guardedValue = map['lite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAnalyticsSiteRule>(guardedValue, (value) => WebAnalyticsSiteRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleset: (() { final guardedValue = map['ruleset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAnalyticsSiteRuleset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteTag: (() { final guardedValue = map['siteTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteToken: (() { final guardedValue = map['siteToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snippet: (() { final guardedValue = map['snippet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneTag: (() { final guardedValue = map['zoneTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
