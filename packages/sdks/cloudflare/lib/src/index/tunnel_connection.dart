// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TunnelConnection {
  /// UUID of the Cloudflare Tunnel connector.
  final pulumi.Input<String?>? clientId;
  /// The cloudflared version used to establish this connection.
  final pulumi.Input<String?>? clientVersion;
  /// The Cloudflare data center used for this connection.
  final pulumi.Input<String?>? coloName;
  /// UUID of the Cloudflare Tunnel connection.
  final pulumi.Input<String?>? id;
  /// Timestamp of when the connection was established.
  final pulumi.Input<String?>? openedAt;
  /// The public IP address of the host running cloudflared.
  final pulumi.Input<String?>? originIp;
  /// UUID of the Cloudflare Tunnel connection.
  final pulumi.Input<String?>? uuid;

  /// Creates a new [TunnelConnection].
  /// [clientId] UUID of the Cloudflare Tunnel connector.
  /// [clientVersion] The cloudflared version used to establish this connection.
  /// [coloName] The Cloudflare data center used for this connection.
  /// [id] UUID of the Cloudflare Tunnel connection.
  /// [openedAt] Timestamp of when the connection was established.
  /// [originIp] The public IP address of the host running cloudflared.
  /// [uuid] UUID of the Cloudflare Tunnel connection.
  const TunnelConnection({
    this.clientId,
    this.clientVersion,
    this.coloName,
    this.id,
    this.openedAt,
    this.originIp,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientVersion': ?clientVersion,
      'coloName': ?coloName,
      'id': ?id,
      'openedAt': ?openedAt,
      'originIp': ?originIp,
      'uuid': ?uuid,
    };
  }

  factory TunnelConnection.fromMap(Map<String, dynamic> map) {
    return TunnelConnection(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coloName: (() { final guardedValue = map['coloName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openedAt: (() { final guardedValue = map['openedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originIp: (() { final guardedValue = map['originIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
