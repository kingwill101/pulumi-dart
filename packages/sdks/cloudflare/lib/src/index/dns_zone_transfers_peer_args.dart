// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_zone_transfers_peer_dns_zone_transfers_peer_args_doc}
/// The set of arguments for DnsZoneTransfersPeer.
/// {@endtemplate}
/// {@macro pulumi_index_dns_zone_transfers_peer_dns_zone_transfers_peer_args_doc}
class DnsZoneTransfersPeerArgs {
  final pulumi.Input<String> accountId;
  /// IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  final pulumi.Input<String?>? ip;
  /// Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  final pulumi.Input<bool?>? ixfrEnable;
  /// The name of the peer.
  final pulumi.Input<String> name;
  /// DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  final pulumi.Input<double?>? port;
  /// TSIG authentication will be used for zone transfer if configured.
  final pulumi.Input<String?>? tsigId;

  /// Creates a new [DnsZoneTransfersPeerArgs].
  /// [accountId] Required.
  /// [ip] IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  /// [ixfrEnable] Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  /// [name] The name of the peer.
  /// [port] DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  /// [tsigId] TSIG authentication will be used for zone transfer if configured.
  const DnsZoneTransfersPeerArgs({
    required this.accountId,
    this.ip,
    this.ixfrEnable,
    required this.name,
    this.port,
    this.tsigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'ip': ?ip,
      'ixfrEnable': ?ixfrEnable,
      'name': name,
      'port': ?port,
      'tsigId': ?tsigId,
    };
  }

  factory DnsZoneTransfersPeerArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersPeerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ixfrEnable: (() { final guardedValue = map['ixfrEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tsigId: (() { final guardedValue = map['tsigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
