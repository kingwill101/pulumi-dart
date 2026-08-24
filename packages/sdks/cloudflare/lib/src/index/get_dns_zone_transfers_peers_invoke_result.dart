// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_zone_transfers_peers_result.dart';

/// Result data returned by getDnsZoneTransfersPeers.
class GetDnsZoneTransfersPeersInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetDnsZoneTransfersPeersResult>? results;

  /// Creates a new [GetDnsZoneTransfersPeersInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetDnsZoneTransfersPeersInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDnsZoneTransfersPeersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDnsZoneTransfersPeersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersPeersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDnsZoneTransfersPeersResult>(guardedValue, (value) => GetDnsZoneTransfersPeersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
