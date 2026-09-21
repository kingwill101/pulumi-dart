// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredConnection {
  /// UUID of the Cloudflare Tunnel connector.
  final pulumi.Input<String> clientId;
  /// The cloudflared version used to establish this connection.
  final pulumi.Input<String> clientVersion;
  /// The Cloudflare data center used for this connection.
  final pulumi.Input<String> coloName;
  /// UUID of the Cloudflare Tunnel connection.
  final pulumi.Input<String> id;
  /// Cloudflare continues to track connections for several minutes after they disconnect. This is an optimization to improve latency and reliability of reconnecting.  If `true`, the connection has disconnected but is still being tracked. If `false`, the connection is actively serving traffic.
  final pulumi.Input<bool> isPendingReconnect;
  /// Timestamp of when the connection was established.
  final pulumi.Input<String> openedAt;
  /// The public IP address of the host running cloudflared.
  final pulumi.Input<String> originIp;
  /// UUID of the Cloudflare Tunnel connection.
  final pulumi.Input<String> uuid;

  /// Creates a new [GetZeroTrustTunnelCloudflaredConnection].
  /// [clientId] UUID of the Cloudflare Tunnel connector.
  /// [clientVersion] The cloudflared version used to establish this connection.
  /// [coloName] The Cloudflare data center used for this connection.
  /// [id] UUID of the Cloudflare Tunnel connection.
  /// [isPendingReconnect] Cloudflare continues to track connections for several minutes after they disconnect. This is an optimization to improve latency and reliability of reconnecting.  If `true`, the connection has disconnected but is still being tracked. If `false`, the connection is actively serving traffic.
  /// [openedAt] Timestamp of when the connection was established.
  /// [originIp] The public IP address of the host running cloudflared.
  /// [uuid] UUID of the Cloudflare Tunnel connection.
  const GetZeroTrustTunnelCloudflaredConnection({
    required this.clientId,
    required this.clientVersion,
    required this.coloName,
    required this.id,
    required this.isPendingReconnect,
    required this.openedAt,
    required this.originIp,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientVersion': clientVersion,
      'coloName': coloName,
      'id': id,
      'isPendingReconnect': isPendingReconnect,
      'openedAt': openedAt,
      'originIp': originIp,
      'uuid': uuid,
    };
  }

  factory GetZeroTrustTunnelCloudflaredConnection.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredConnection(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientVersion: pulumi.Input.fromValue(map['clientVersion'] as String),
      coloName: pulumi.Input.fromValue(map['coloName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isPendingReconnect: pulumi.Input.fromValue(map['isPendingReconnect'] as bool),
      openedAt: pulumi.Input.fromValue(map['openedAt'] as String),
      originIp: pulumi.Input.fromValue(map['originIp'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
