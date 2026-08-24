// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_rule_actions_cache_key_fields_cookie.dart';
import 'page_rule_actions_cache_key_fields_header.dart';
import 'page_rule_actions_cache_key_fields_host.dart';
import 'page_rule_actions_cache_key_fields_query_string.dart';
import 'page_rule_actions_cache_key_fields_user.dart';

class PageRuleActionsCacheKeyFields {
  final pulumi.Input<PageRuleActionsCacheKeyFieldsCookie?>? cookie;
  final pulumi.Input<PageRuleActionsCacheKeyFieldsHeader?>? header;
  final pulumi.Input<PageRuleActionsCacheKeyFieldsHost?>? host;
  final pulumi.Input<PageRuleActionsCacheKeyFieldsQueryString?>? queryString;
  final pulumi.Input<PageRuleActionsCacheKeyFieldsUser?>? user;

  /// Creates a new [PageRuleActionsCacheKeyFields].
  /// [cookie] Optional.
  /// [header] Optional.
  /// [host] Optional.
  /// [queryString] Optional.
  /// [user] Optional.
  const PageRuleActionsCacheKeyFields({
    this.cookie,
    this.header,
    this.host,
    this.queryString,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsCacheKeyFieldsCookie, Map<String, dynamic>>(cookie, (value) => value.toMap()),
      'header': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsCacheKeyFieldsHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'host': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsCacheKeyFieldsHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'queryString': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsCacheKeyFieldsQueryString, Map<String, dynamic>>(queryString, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsCacheKeyFieldsUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory PageRuleActionsCacheKeyFields.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsCacheKeyFields(
      cookie: (() { final guardedValue = map['cookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsCacheKeyFieldsCookie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsCacheKeyFieldsHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsCacheKeyFieldsHost.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsCacheKeyFieldsQueryString.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsCacheKeyFieldsUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
