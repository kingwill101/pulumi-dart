// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevCapsNetRoute {
  /// Sets the destination address for the routing configuration of the host device.
  final pulumi.Input<String>? address;
  /// Specifies the address family for the routing capabilities (IPv4 or IPv6) of the host device.
  final pulumi.Input<String>? family;
  /// Configures the gateway address for the routing capability associated with the host device.
  final pulumi.Input<String>? gateway;

  /// Creates a new [DomainDevicesHostdevCapsNetRoute].
  /// [address] Sets the destination address for the routing configuration of the host device.
  /// [family] Specifies the address family for the routing capabilities (IPv4 or IPv6) of the host device.
  /// [gateway] Configures the gateway address for the routing capability associated with the host device.
  DomainDevicesHostdevCapsNetRoute({
    this.address,
    this.family,
    this.gateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'family': ?family,
      'gateway': ?gateway,
    };
  }

  factory DomainDevicesHostdevCapsNetRoute.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNetRoute(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
    );
  }
}

