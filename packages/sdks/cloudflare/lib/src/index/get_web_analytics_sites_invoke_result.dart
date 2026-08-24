// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_analytics_sites_result.dart';

/// Result data returned by getWebAnalyticsSites.
class GetWebAnalyticsSitesInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The property used to sort the list of results.
  /// Available values: "host", "created".
  final String? orderBy;
  /// The items returned by the data source
  final List<GetWebAnalyticsSitesResult>? results;

  /// Creates a new [GetWebAnalyticsSitesInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [orderBy] The property used to sort the list of results.
  /// [results] The items returned by the data source
  const GetWebAnalyticsSitesInvokeResult({
    this.accountId,
    this.maxItems,
    this.orderBy,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWebAnalyticsSitesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWebAnalyticsSitesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSitesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWebAnalyticsSitesResult>(guardedValue, (value) => GetWebAnalyticsSitesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
