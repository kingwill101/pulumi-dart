// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_cache_key_custom_key_cookie.dart';
import 'ruleset_rule_action_parameters_cache_key_custom_key_header.dart';
import 'ruleset_rule_action_parameters_cache_key_custom_key_host.dart';
import 'ruleset_rule_action_parameters_cache_key_custom_key_query_string.dart';
import 'ruleset_rule_action_parameters_cache_key_custom_key_user.dart';

class RulesetRuleActionParametersCacheKeyCustomKey {
  /// Which cookies to include in the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyCookie?>? cookie;
  /// Which headers to include in the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyHeader?>? header;
  /// How to use the host in the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyHost?>? host;
  /// Which query string parameters to include in or exclude from the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyQueryString?>? queryString;
  /// How to use characteristics of the request user agent in the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKeyUser?>? user;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKey].
  /// [cookie] Which cookies to include in the cache key.
  /// [header] Which headers to include in the cache key.
  /// [host] How to use the host in the cache key.
  /// [queryString] Which query string parameters to include in or exclude from the cache key.
  /// [user] How to use characteristics of the request user agent in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKey({
    this.cookie,
    this.header,
    this.host,
    this.queryString,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyCookie, Map<String, dynamic>>(cookie, (value) => value.toMap()),
      'header': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'host': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'queryString': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyQueryString, Map<String, dynamic>>(queryString, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKeyUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKey.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKey(
      cookie: (() { final guardedValue = map['cookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyCookie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyHost.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyQueryString.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKeyUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
