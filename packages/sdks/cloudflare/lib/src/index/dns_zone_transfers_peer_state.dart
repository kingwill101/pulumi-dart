// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsZoneTransfersPeer resources.
class DnsZoneTransfersPeerState {
  final pulumi.Input<String?>? accountId;
  /// IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  final pulumi.Input<String?>? ip;
  /// Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  final pulumi.Input<bool?>? ixfrEnable;
  /// The name of the peer.
  final pulumi.Input<String?>? name;
  /// DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  final pulumi.Input<double?>? port;
  /// TSIG authentication will be used for zone transfer if configured.
  final pulumi.Input<String?>? tsigId;

  /// Creates a new [DnsZoneTransfersPeerState].
  /// [accountId] Optional.
  /// [ip] IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  /// [ixfrEnable] Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  /// [name] The name of the peer.
  /// [port] DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  /// [tsigId] TSIG authentication will be used for zone transfer if configured.
  const DnsZoneTransfersPeerState({
    this.accountId,
    this.ip,
    this.ixfrEnable,
    this.name,
    this.port,
    this.tsigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ip': ?ip,
      'ixfrEnable': ?ixfrEnable,
      'name': ?name,
      'port': ?port,
      'tsigId': ?tsigId,
    };
  }

  factory DnsZoneTransfersPeerState.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersPeerState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ixfrEnable: (() { final guardedValue = map['ixfrEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tsigId: (() { final guardedValue = map['tsigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
