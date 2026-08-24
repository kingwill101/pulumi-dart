// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_zone_transfers_outgoing_get_dns_zone_transfers_outgoing_args_doc}
/// Arguments for getDnsZoneTransfersOutgoing.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_zone_transfers_outgoing_get_dns_zone_transfers_outgoing_args_doc}
class GetDnsZoneTransfersOutgoingArgs {
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetDnsZoneTransfersOutgoingArgs].
  /// [zoneId] Optional.
  const GetDnsZoneTransfersOutgoingArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetDnsZoneTransfersOutgoingArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersOutgoingArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
