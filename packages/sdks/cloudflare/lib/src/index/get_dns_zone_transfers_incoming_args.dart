// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_zone_transfers_incoming_get_dns_zone_transfers_incoming_args_doc}
/// Arguments for getDnsZoneTransfersIncoming.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_zone_transfers_incoming_get_dns_zone_transfers_incoming_args_doc}
class GetDnsZoneTransfersIncomingArgs {
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetDnsZoneTransfersIncomingArgs].
  /// [zoneId] Optional.
  const GetDnsZoneTransfersIncomingArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetDnsZoneTransfersIncomingArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersIncomingArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
