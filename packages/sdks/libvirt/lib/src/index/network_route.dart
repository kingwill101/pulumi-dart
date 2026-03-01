// ignore_for_file: unused_element, unnecessary_cast


class NetworkRoute {
  /// Sets the address for the static route in the network configuration.
  final String? address;
  /// Defines the address family (IPv4 or IPv6) to be used for the static route.
  final String? family;
  /// Specifies the gateway address to use for the static route.
  final String? gateway;
  /// Sets the metric value for the static route, influencing route selection.
  final String? metric;
  /// Configures the netmask for the static route address.
  final String? netmask;
  /// Defines the prefix length for the static route, particularly for IPv6 addresses.
  final double? prefix;

  /// Creates a new [NetworkRoute].
  /// [address] Sets the address for the static route in the network configuration.
  /// [family] Defines the address family (IPv4 or IPv6) to be used for the static route.
  /// [gateway] Specifies the gateway address to use for the static route.
  /// [metric] Sets the metric value for the static route, influencing route selection.
  /// [netmask] Configures the netmask for the static route address.
  /// [prefix] Defines the prefix length for the static route, particularly for IPv6 addresses.
  NetworkRoute({
    this.address,
    this.family,
    this.gateway,
    this.metric,
    this.netmask,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'family': ?family,
      'gateway': ?gateway,
      'metric': ?metric,
      'netmask': ?netmask,
      'prefix': ?prefix,
    };
  }

  factory NetworkRoute.fromMap(Map<String, dynamic> map) {
    return NetworkRoute(
      address: map['address'] == null ? null : map['address'] as String,
      family: map['family'] == null ? null : map['family'] as String,
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as double,
    );
  }
}

