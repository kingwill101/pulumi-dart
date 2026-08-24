// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_zone_transfers_outgoing_dns_zone_transfers_outgoing_args_doc}
/// The set of arguments for DnsZoneTransfersOutgoing.
/// {@endtemplate}
/// {@macro pulumi_index_dns_zone_transfers_outgoing_dns_zone_transfers_outgoing_args_doc}
class DnsZoneTransfersOutgoingArgs {
  /// Zone name.
  final pulumi.Input<String> name;
  /// A list of peer tags.
  final pulumi.Input<List<String>> peers;
  final pulumi.Input<String> zoneId;

  /// Creates a new [DnsZoneTransfersOutgoingArgs].
  /// [name] Zone name.
  /// [peers] A list of peer tags.
  /// [zoneId] Required.
  const DnsZoneTransfersOutgoingArgs({
    required this.name,
    required this.peers,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'peers': peers,
      'zoneId': zoneId,
    };
  }

  factory DnsZoneTransfersOutgoingArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersOutgoingArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      peers: pulumi.Input.fromValue((map['peers'] as List).cast<String>()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
