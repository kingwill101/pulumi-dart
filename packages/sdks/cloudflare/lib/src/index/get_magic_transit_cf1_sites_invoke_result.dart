// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_cf1_sites_result.dart';

/// Result data returned by getMagicTransitCf1Sites.
class GetMagicTransitCf1SitesInvokeResult {
  /// Identifier
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetMagicTransitCf1SitesResult>? results;

  /// Creates a new [GetMagicTransitCf1SitesInvokeResult].
  /// [accountId] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetMagicTransitCf1SitesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicTransitCf1SitesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMagicTransitCf1SitesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitCf1SitesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicTransitCf1SitesResult>(guardedValue, (value) => GetMagicTransitCf1SitesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
