// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_zone_transfers_peer_get_dns_zone_transfers_peer_args_doc}
/// Arguments for getDnsZoneTransfersPeer.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_zone_transfers_peer_get_dns_zone_transfers_peer_args_doc}
class GetDnsZoneTransfersPeerArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> peerId;

  /// Creates a new [GetDnsZoneTransfersPeerArgs].
  /// [accountId] Optional.
  /// [peerId] Required.
  const GetDnsZoneTransfersPeerArgs({
    this.accountId,
    required this.peerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'peerId': peerId,
    };
  }

  factory GetDnsZoneTransfersPeerArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersPeerArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerId: pulumi.Input.fromValue(map['peerId'] as String),
    );
  }
}
