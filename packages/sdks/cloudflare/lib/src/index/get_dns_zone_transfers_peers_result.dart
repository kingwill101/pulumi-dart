// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsZoneTransfersPeersResult {
  final pulumi.Input<String> id;
  /// IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  final pulumi.Input<String> ip;
  /// Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  final pulumi.Input<bool> ixfrEnable;
  /// The name of the peer.
  final pulumi.Input<String> name;
  /// DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  final pulumi.Input<double> port;
  /// TSIG authentication will be used for zone transfer if configured.
  final pulumi.Input<String> tsigId;

  /// Creates a new [GetDnsZoneTransfersPeersResult].
  /// [id] Required.
  /// [ip] IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  /// [ixfrEnable] Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  /// [name] The name of the peer.
  /// [port] DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  /// [tsigId] TSIG authentication will be used for zone transfer if configured.
  const GetDnsZoneTransfersPeersResult({
    required this.id,
    required this.ip,
    required this.ixfrEnable,
    required this.name,
    required this.port,
    required this.tsigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ip': ip,
      'ixfrEnable': ixfrEnable,
      'name': name,
      'port': port,
      'tsigId': tsigId,
    };
  }

  factory GetDnsZoneTransfersPeersResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersPeersResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      ixfrEnable: pulumi.Input.fromValue(map['ixfrEnable'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toDouble()),
      tsigId: pulumi.Input.fromValue(map['tsigId'] as String),
    );
  }
}
