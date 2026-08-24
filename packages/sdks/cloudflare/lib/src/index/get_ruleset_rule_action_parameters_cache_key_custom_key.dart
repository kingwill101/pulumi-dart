// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_cookie.dart';
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_header.dart';
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_host.dart';
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_query_string.dart';
import 'get_ruleset_rule_action_parameters_cache_key_custom_key_user.dart';

class GetRulesetRuleActionParametersCacheKeyCustomKey {
  /// Which cookies to include in the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyCookie> cookie;
  /// Which headers to include in the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyHeader> header;
  /// How to use the host in the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyHost> host;
  /// Which query string parameters to include in or exclude from the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString> queryString;
  /// How to use characteristics of the request user agent in the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKeyUser> user;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKey].
  /// [cookie] Which cookies to include in the cache key.
  /// [header] Which headers to include in the cache key.
  /// [host] How to use the host in the cache key.
  /// [queryString] Which query string parameters to include in or exclude from the cache key.
  /// [user] How to use characteristics of the request user agent in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKey({
    required this.cookie,
    required this.header,
    required this.host,
    required this.queryString,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyCookie, Map<String, dynamic>>(cookie, (value) => value.toMap()),
      'header': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'host': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'queryString': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString, Map<String, dynamic>>(queryString, (value) => value.toMap()),
      'user': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKeyUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKey.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKey(
      cookie: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyCookie.fromMap((map['cookie']! as Map).cast<String, dynamic>())),
      header: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyHeader.fromMap((map['header']! as Map).cast<String, dynamic>())),
      host: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyHost.fromMap((map['host']! as Map).cast<String, dynamic>())),
      queryString: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyQueryString.fromMap((map['queryString']! as Map).cast<String, dynamic>())),
      user: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKeyUser.fromMap((map['user']! as Map).cast<String, dynamic>())),
    );
  }
}
