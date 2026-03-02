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
  TunnelConnectionHealthResponse({
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
      connectionStatus: (map['connectionStatus'] as String).input(),
      egressBytesTransferred: (map['egressBytesTransferred'] as double).input(),
      ingressBytesTransferred: (map['ingressBytesTransferred'] as double).input(),
      lastConnectionEstablishedUtcTime: (map['lastConnectionEstablishedUtcTime'] as String).input(),
      tunnel: (map['tunnel'] as String).input(),
    );
  }
}

