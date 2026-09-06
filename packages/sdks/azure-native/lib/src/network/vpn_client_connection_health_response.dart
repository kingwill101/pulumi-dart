// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VpnClientConnectionHealth properties.
class VpnClientConnectionHealthResponse {
  /// List of allocated ip addresses to the connected p2s vpn clients.
  final pulumi.Input<List<String>?>? allocatedIpAddresses;
  /// Total of the Egress Bytes Transferred in this connection.
  final pulumi.Input<double> totalEgressBytesTransferred;
  /// Total of the Ingress Bytes Transferred in this P2S Vpn connection.
  final pulumi.Input<double> totalIngressBytesTransferred;
  /// The total of p2s vpn clients connected at this time to this P2SVpnGateway.
  final pulumi.Input<int?>? vpnClientConnectionsCount;

  /// Creates a new [VpnClientConnectionHealthResponse].
  /// [allocatedIpAddresses] List of allocated ip addresses to the connected p2s vpn clients.
  /// [totalEgressBytesTransferred] Total of the Egress Bytes Transferred in this connection.
  /// [totalIngressBytesTransferred] Total of the Ingress Bytes Transferred in this P2S Vpn connection.
  /// [vpnClientConnectionsCount] The total of p2s vpn clients connected at this time to this P2SVpnGateway.
  const VpnClientConnectionHealthResponse({
    this.allocatedIpAddresses,
    required this.totalEgressBytesTransferred,
    required this.totalIngressBytesTransferred,
    this.vpnClientConnectionsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpAddresses': ?allocatedIpAddresses,
      'totalEgressBytesTransferred': totalEgressBytesTransferred,
      'totalIngressBytesTransferred': totalIngressBytesTransferred,
      'vpnClientConnectionsCount': ?vpnClientConnectionsCount,
    };
  }

  factory VpnClientConnectionHealthResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientConnectionHealthResponse(
      allocatedIpAddresses: (() { final guardedValue = map['allocatedIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      totalEgressBytesTransferred: pulumi.Input.fromValue((map['totalEgressBytesTransferred'] as num).toDouble()),
      totalIngressBytesTransferred: pulumi.Input.fromValue((map['totalIngressBytesTransferred'] as num).toDouble()),
      vpnClientConnectionsCount: (() { final guardedValue = map['vpnClientConnectionsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
