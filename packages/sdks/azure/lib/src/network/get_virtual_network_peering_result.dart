// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVirtualNetworkPeering.
class GetVirtualNetworkPeeringResult {
  /// Controls if forwarded traffic from VMs in the remote virtual network is allowed.
  final bool allowForwardedTraffic;

  /// Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network.
  final bool allowGatewayTransit;

  /// Controls if the traffic from the local virtual network can reach the remote virtual network.
  final bool allowVirtualNetworkAccess;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Specifies whether only IPv6 address space is peered for Subnet peering.
  final bool onlyIpv6PeeringEnabled;

  /// Specifies whether complete Virtual Network address space is peered.
  final bool peerCompleteVirtualNetworksEnabled;

  /// The full Azure resource ID of the remote virtual network.
  final String remoteVirtualNetworkId;

  /// Controls if remote gateways can be used on the local virtual network.
  final bool useRemoteGateways;
  final String virtualNetworkId;

  /// Creates a new [GetVirtualNetworkPeeringResult].
  /// [allowForwardedTraffic] Controls if forwarded traffic from VMs in the remote virtual network is allowed.
  /// [allowGatewayTransit] Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network.
  /// [allowVirtualNetworkAccess] Controls if the traffic from the local virtual network can reach the remote virtual network.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [onlyIpv6PeeringEnabled] Specifies whether only IPv6 address space is peered for Subnet peering.
  /// [peerCompleteVirtualNetworksEnabled] Specifies whether complete Virtual Network address space is peered.
  /// [remoteVirtualNetworkId] The full Azure resource ID of the remote virtual network.
  /// [useRemoteGateways] Controls if remote gateways can be used on the local virtual network.
  /// [virtualNetworkId] Required.
  GetVirtualNetworkPeeringResult({
    required this.allowForwardedTraffic,
    required this.allowGatewayTransit,
    required this.allowVirtualNetworkAccess,
    required this.id,
    required this.name,
    required this.onlyIpv6PeeringEnabled,
    required this.peerCompleteVirtualNetworksEnabled,
    required this.remoteVirtualNetworkId,
    required this.useRemoteGateways,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': allowForwardedTraffic,
      'allowGatewayTransit': allowGatewayTransit,
      'allowVirtualNetworkAccess': allowVirtualNetworkAccess,
      'id': id,
      'name': name,
      'onlyIpv6PeeringEnabled': onlyIpv6PeeringEnabled,
      'peerCompleteVirtualNetworksEnabled': peerCompleteVirtualNetworksEnabled,
      'remoteVirtualNetworkId': remoteVirtualNetworkId,
      'useRemoteGateways': useRemoteGateways,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetVirtualNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkPeeringResult(
      allowForwardedTraffic: map['allowForwardedTraffic'] as bool,
      allowGatewayTransit: map['allowGatewayTransit'] as bool,
      allowVirtualNetworkAccess: map['allowVirtualNetworkAccess'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      onlyIpv6PeeringEnabled: map['onlyIpv6PeeringEnabled'] as bool,
      peerCompleteVirtualNetworksEnabled:
          map['peerCompleteVirtualNetworksEnabled'] as bool,
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] as String,
      useRemoteGateways: map['useRemoteGateways'] as bool,
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}
