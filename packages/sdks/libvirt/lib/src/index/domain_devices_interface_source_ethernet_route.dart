// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceEthernetRoute {
  /// Specifies the route destination address.
  final String address;
  /// Defines the address family for the routing configuration.
  final String? family;
  /// Sets the gateway address for the route.
  final String gateway;
  /// Configures the routing metric for determining the best route.
  final double? metric;
  /// Specifies the netmask for the route configuration.
  final String? netmask;
  /// Sets the prefix length for the route configuration.
  final double? prefix;

  /// Creates a new [DomainDevicesInterfaceSourceEthernetRoute].
  /// [address] Specifies the route destination address.
  /// [family] Defines the address family for the routing configuration.
  /// [gateway] Sets the gateway address for the route.
  /// [metric] Configures the routing metric for determining the best route.
  /// [netmask] Specifies the netmask for the route configuration.
  /// [prefix] Sets the prefix length for the route configuration.
  DomainDevicesInterfaceSourceEthernetRoute({
    required this.address,
    this.family,
    required this.gateway,
    this.metric,
    this.netmask,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'family': ?family,
      'gateway': gateway,
      'metric': ?metric,
      'netmask': ?netmask,
      'prefix': ?prefix,
    };
  }

  factory DomainDevicesInterfaceSourceEthernetRoute.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceEthernetRoute(
      address: map['address'] as String,
      family: map['family'] == null ? null : map['family'] as String,
      gateway: map['gateway'] as String,
      metric: map['metric'] == null ? null : map['metric'] as double,
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as double,
    );
  }
}

