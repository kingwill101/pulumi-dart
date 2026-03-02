// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceEthernetRoute {
  /// Specifies the route destination address.
  final pulumi.Input<String> address;
  /// Defines the address family for the routing configuration.
  final pulumi.Input<String>? family;
  /// Sets the gateway address for the route.
  final pulumi.Input<String> gateway;
  /// Configures the routing metric for determining the best route.
  final pulumi.Input<double>? metric;
  /// Specifies the netmask for the route configuration.
  final pulumi.Input<String>? netmask;
  /// Sets the prefix length for the route configuration.
  final pulumi.Input<double>? prefix;

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
      address: (map['address'] as String).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      gateway: (map['gateway'] as String).input(),
      metric: map['metric'] == null ? null : (map['metric']! as double).input(),
      netmask: map['netmask'] == null ? null : (map['netmask']! as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']! as double).input(),
    );
  }
}

