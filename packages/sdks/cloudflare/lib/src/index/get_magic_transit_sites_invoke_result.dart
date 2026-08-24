// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_sites_result.dart';

/// Result data returned by getMagicTransitSites.
class GetMagicTransitSitesInvokeResult {
  /// Identifier
  final String? accountId;
  /// Identifier
  final String? connectorid;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetMagicTransitSitesResult>? results;

  /// Creates a new [GetMagicTransitSitesInvokeResult].
  /// [accountId] Identifier
  /// [connectorid] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetMagicTransitSitesInvokeResult({
    this.accountId,
    this.connectorid,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'connectorid': ?connectorid,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicTransitSitesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMagicTransitSitesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSitesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorid: (() { final guardedValue = map['connectorid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicTransitSitesResult>(guardedValue, (value) => GetMagicTransitSitesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
