// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_acls_result.dart';

/// Result data returned by getMagicTransitSiteAcls.
class GetMagicTransitSiteAclsInvokeResult {
  /// Identifier
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetMagicTransitSiteAclsResult>? results;
  /// Identifier
  final String? siteId;

  /// Creates a new [GetMagicTransitSiteAclsInvokeResult].
  /// [accountId] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [siteId] Identifier
  const GetMagicTransitSiteAclsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicTransitSiteAclsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteId': ?siteId,
    };
  }

  factory GetMagicTransitSiteAclsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteAclsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicTransitSiteAclsResult>(guardedValue, (value) => GetMagicTransitSiteAclsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
