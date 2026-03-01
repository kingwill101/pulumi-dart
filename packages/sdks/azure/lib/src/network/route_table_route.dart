// ignore_for_file: unused_element, unnecessary_cast


class RouteTableRoute {
  /// The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  final String addressPrefix;
  /// The name of the route.
  final String name;
  /// Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  final String? nextHopInIpAddress;
  /// The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  final String nextHopType;

  /// Creates a new [RouteTableRoute].
  /// [addressPrefix] The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  /// [name] The name of the route.
  /// [nextHopInIpAddress] Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  /// [nextHopType] The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  RouteTableRoute({
    required this.addressPrefix,
    required this.name,
    this.nextHopInIpAddress,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'name': name,
      'nextHopInIpAddress': ?nextHopInIpAddress,
      'nextHopType': nextHopType,
    };
  }

  factory RouteTableRoute.fromMap(Map<String, dynamic> map) {
    return RouteTableRoute(
      addressPrefix: map['addressPrefix'] as String,
      name: map['name'] as String,
      nextHopInIpAddress: map['nextHopInIpAddress'] == null ? null : map['nextHopInIpAddress'] as String,
      nextHopType: map['nextHopType'] as String,
    );
  }
}

