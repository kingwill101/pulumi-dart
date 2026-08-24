// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZoneTransfersPeer.
class GetDnsZoneTransfersPeerResult {
  final String? accountId;
  /// The ID of this resource.
  final String? id;
  /// IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  final String? ip;
  /// Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  final bool? ixfrEnable;
  /// The name of the peer.
  final String? name;
  final String? peerId;
  /// DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  final double? port;
  /// TSIG authentication will be used for zone transfer if configured.
  final String? tsigId;

  /// Creates a new [GetDnsZoneTransfersPeerResult].
  /// [accountId] Optional.
  /// [id] The ID of this resource.
  /// [ip] IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  /// [ixfrEnable] Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  /// [name] The name of the peer.
  /// [peerId] Optional.
  /// [port] DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  /// [tsigId] TSIG authentication will be used for zone transfer if configured.
  const GetDnsZoneTransfersPeerResult({
    this.accountId,
    this.id,
    this.ip,
    this.ixfrEnable,
    this.name,
    this.peerId,
    this.port,
    this.tsigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'ip': ?ip,
      'ixfrEnable': ?ixfrEnable,
      'name': ?name,
      'peerId': ?peerId,
      'port': ?port,
      'tsigId': ?tsigId,
    };
  }

  factory GetDnsZoneTransfersPeerResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersPeerResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ixfrEnable: (() { final guardedValue = map['ixfrEnable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerId: (() { final guardedValue = map['peerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      tsigId: (() { final guardedValue = map['tsigId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
