// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_zone_transfers_incoming_dns_zone_transfers_incoming_args_doc}
/// The set of arguments for DnsZoneTransfersIncoming.
/// {@endtemplate}
/// {@macro pulumi_index_dns_zone_transfers_incoming_dns_zone_transfers_incoming_args_doc}
class DnsZoneTransfersIncomingArgs {
  /// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
  /// Not applicable for primary zones.
  final pulumi.Input<double?>? autoRefreshSeconds;
  /// Zone name.
  final pulumi.Input<String> name;
  /// A list of peer tags.
  final pulumi.Input<List<String>> peers;
  final pulumi.Input<String> zoneId;

  /// Creates a new [DnsZoneTransfersIncomingArgs].
  /// [autoRefreshSeconds] How often should a secondary zone auto refresh regardless of DNS NOTIFY.
  /// [name] Zone name.
  /// [peers] A list of peer tags.
  /// [zoneId] Required.
  const DnsZoneTransfersIncomingArgs({
    this.autoRefreshSeconds,
    required this.name,
    required this.peers,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRefreshSeconds': ?autoRefreshSeconds,
      'name': name,
      'peers': peers,
      'zoneId': zoneId,
    };
  }

  factory DnsZoneTransfersIncomingArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersIncomingArgs(
      autoRefreshSeconds: (() { final guardedValue = map['autoRefreshSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      peers: pulumi.Input.fromValue((map['peers'] as List).cast<String>()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
