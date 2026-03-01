// ignore_for_file: unused_element, unnecessary_cast


/// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
class VirtualNetworkBgpCommunities {
  /// The BGP community associated with the virtual network.
  final String virtualNetworkCommunity;

  /// Creates a new [VirtualNetworkBgpCommunities].
  /// [virtualNetworkCommunity] The BGP community associated with the virtual network.
  VirtualNetworkBgpCommunities({
    required this.virtualNetworkCommunity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworkCommunity': virtualNetworkCommunity,
    };
  }

  factory VirtualNetworkBgpCommunities.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkBgpCommunities(
      virtualNetworkCommunity: map['virtualNetworkCommunity'] as String,
    );
  }
}

