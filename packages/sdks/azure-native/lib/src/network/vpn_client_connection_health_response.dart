// ignore_for_file: unused_element, unnecessary_cast


/// VpnClientConnectionHealth properties.
class VpnClientConnectionHealthResponse {
  /// List of allocated ip addresses to the connected p2s vpn clients.
  final List<String>? allocatedIpAddresses;
  /// Total of the Egress Bytes Transferred in this connection.
  final double totalEgressBytesTransferred;
  /// Total of the Ingress Bytes Transferred in this P2S Vpn connection.
  final double totalIngressBytesTransferred;
  /// The total of p2s vpn clients connected at this time to this P2SVpnGateway.
  final int? vpnClientConnectionsCount;

  /// Creates a new [VpnClientConnectionHealthResponse].
  /// [allocatedIpAddresses] List of allocated ip addresses to the connected p2s vpn clients.
  /// [totalEgressBytesTransferred] Total of the Egress Bytes Transferred in this connection.
  /// [totalIngressBytesTransferred] Total of the Ingress Bytes Transferred in this P2S Vpn connection.
  /// [vpnClientConnectionsCount] The total of p2s vpn clients connected at this time to this P2SVpnGateway.
  VpnClientConnectionHealthResponse({
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
      allocatedIpAddresses: map['allocatedIpAddresses'] == null ? null : (map['allocatedIpAddresses'] as List).cast<String>(),
      totalEgressBytesTransferred: map['totalEgressBytesTransferred'] as double,
      totalIngressBytesTransferred: map['totalIngressBytesTransferred'] as double,
      vpnClientConnectionsCount: map['vpnClientConnectionsCount'] == null ? null : map['vpnClientConnectionsCount'] as int,
    );
  }
}

