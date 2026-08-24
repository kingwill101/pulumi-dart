// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_zone_transfers_peers_get_dns_zone_transfers_peers_args_doc}
/// Arguments for getDnsZoneTransfersPeers.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_zone_transfers_peers_get_dns_zone_transfers_peers_args_doc}
class GetDnsZoneTransfersPeersArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetDnsZoneTransfersPeersArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  const GetDnsZoneTransfersPeersArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetDnsZoneTransfersPeersArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersPeersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
