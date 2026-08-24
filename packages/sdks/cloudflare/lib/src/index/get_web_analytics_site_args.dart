// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_analytics_site_filter.dart';

/// {@template pulumi_index_get_web_analytics_site_get_web_analytics_site_args_doc}
/// Arguments for getWebAnalyticsSite.
/// {@endtemplate}
/// {@macro pulumi_index_get_web_analytics_site_get_web_analytics_site_args_doc}
class GetWebAnalyticsSiteArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetWebAnalyticsSiteFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? siteId;

  /// Creates a new [GetWebAnalyticsSiteArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [siteId] Identifier.
  const GetWebAnalyticsSiteArgs({
    this.accountId,
    this.filter,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetWebAnalyticsSiteFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'siteId': ?siteId,
    };
  }

  factory GetWebAnalyticsSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSiteArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWebAnalyticsSiteFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
