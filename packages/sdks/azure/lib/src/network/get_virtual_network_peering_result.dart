// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkPeering.
class GetVirtualNetworkPeeringResult {
  /// Controls if forwarded traffic from VMs in the remote virtual network is allowed.
  final bool? allowForwardedTraffic;
  /// Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network.
  final bool? allowGatewayTransit;
  /// Controls if the traffic from the local virtual network can reach the remote virtual network.
  final bool? allowVirtualNetworkAccess;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Specifies whether only IPv6 address space is peered for Subnet peering.
  final bool? onlyIpv6PeeringEnabled;
  /// Specifies whether complete Virtual Network address space is peered.
  final bool? peerCompleteVirtualNetworksEnabled;
  /// The full Azure resource ID of the remote virtual network.
  final String? remoteVirtualNetworkId;
  /// Controls if remote gateways can be used on the local virtual network.
  final bool? useRemoteGateways;
  final String? virtualNetworkId;

  /// Creates a new [GetVirtualNetworkPeeringResult].
  /// [allowForwardedTraffic] Controls if forwarded traffic from VMs in the remote virtual network is allowed.
  /// [allowGatewayTransit] Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network.
  /// [allowVirtualNetworkAccess] Controls if the traffic from the local virtual network can reach the remote virtual network.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [onlyIpv6PeeringEnabled] Specifies whether only IPv6 address space is peered for Subnet peering.
  /// [peerCompleteVirtualNetworksEnabled] Specifies whether complete Virtual Network address space is peered.
  /// [remoteVirtualNetworkId] The full Azure resource ID of the remote virtual network.
  /// [useRemoteGateways] Controls if remote gateways can be used on the local virtual network.
  /// [virtualNetworkId] Optional.
  const GetVirtualNetworkPeeringResult({
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    this.id,
    this.name,
    this.onlyIpv6PeeringEnabled,
    this.peerCompleteVirtualNetworksEnabled,
    this.remoteVirtualNetworkId,
    this.useRemoteGateways,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'id': ?id,
      'name': ?name,
      'onlyIpv6PeeringEnabled': ?onlyIpv6PeeringEnabled,
      'peerCompleteVirtualNetworksEnabled': ?peerCompleteVirtualNetworksEnabled,
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'useRemoteGateways': ?useRemoteGateways,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetVirtualNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkPeeringResult(
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onlyIpv6PeeringEnabled: (() { final guardedValue = map['onlyIpv6PeeringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      peerCompleteVirtualNetworksEnabled: (() { final guardedValue = map['peerCompleteVirtualNetworksEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      remoteVirtualNetworkId: (() { final guardedValue = map['remoteVirtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
