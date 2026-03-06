// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VirtualNetworkGatewayConnection properties.
class TunnelConnectionHealthResponse {
  /// Virtual Network Gateway connection status.
  final pulumi.Input<String> connectionStatus;
  /// The Egress Bytes Transferred in this connection.
  final pulumi.Input<double> egressBytesTransferred;
  /// The Ingress Bytes Transferred in this connection.
  final pulumi.Input<double> ingressBytesTransferred;
  /// The time at which connection was established in Utc format.
  final pulumi.Input<String> lastConnectionEstablishedUtcTime;
  /// Tunnel name.
  final pulumi.Input<String> tunnel;

  /// Creates a new [TunnelConnectionHealthResponse].
  /// [connectionStatus] Virtual Network Gateway connection status.
  /// [egressBytesTransferred] The Egress Bytes Transferred in this connection.
  /// [ingressBytesTransferred] The Ingress Bytes Transferred in this connection.
  /// [lastConnectionEstablishedUtcTime] The time at which connection was established in Utc format.
  /// [tunnel] Tunnel name.
  const TunnelConnectionHealthResponse({
    required this.connectionStatus,
    required this.egressBytesTransferred,
    required this.ingressBytesTransferred,
    required this.lastConnectionEstablishedUtcTime,
    required this.tunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStatus': connectionStatus,
      'egressBytesTransferred': egressBytesTransferred,
      'ingressBytesTransferred': ingressBytesTransferred,
      'lastConnectionEstablishedUtcTime': lastConnectionEstablishedUtcTime,
      'tunnel': tunnel,
    };
  }

  factory TunnelConnectionHealthResponse.fromMap(Map<String, dynamic> map) {
    return TunnelConnectionHealthResponse(
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      egressBytesTransferred: pulumi.Input.fromValue(map['egressBytesTransferred'] as double),
      ingressBytesTransferred: pulumi.Input.fromValue(map['ingressBytesTransferred'] as double),
      lastConnectionEstablishedUtcTime: pulumi.Input.fromValue(map['lastConnectionEstablishedUtcTime'] as String),
      tunnel: pulumi.Input.fromValue(map['tunnel'] as String),
    );
  }
}

