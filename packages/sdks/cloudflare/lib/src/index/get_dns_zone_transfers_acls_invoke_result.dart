// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_zone_transfers_acls_result.dart';

/// Result data returned by getDnsZoneTransfersAcls.
class GetDnsZoneTransfersAclsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetDnsZoneTransfersAclsResult>? results;

  /// Creates a new [GetDnsZoneTransfersAclsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetDnsZoneTransfersAclsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDnsZoneTransfersAclsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDnsZoneTransfersAclsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersAclsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDnsZoneTransfersAclsResult>(guardedValue, (value) => GetDnsZoneTransfersAclsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
