// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceRoute {
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

  /// Creates a new [DomainDevicesInterfaceRoute].
  /// [address] Specifies the route destination address.
  /// [family] Defines the address family for the routing configuration.
  /// [gateway] Sets the gateway address for the route.
  /// [metric] Configures the routing metric for determining the best route.
  /// [netmask] Specifies the netmask for the route configuration.
  /// [prefix] Sets the prefix length for the route configuration.
  const DomainDevicesInterfaceRoute({
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

  factory DomainDevicesInterfaceRoute.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceRoute(
      address: pulumi.Input.fromValue(map['address'] as String),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      netmask: (() { final guardedValue = map['netmask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
