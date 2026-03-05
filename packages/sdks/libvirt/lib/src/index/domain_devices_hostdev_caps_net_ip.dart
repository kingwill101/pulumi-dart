// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevCapsNetIp {
  /// Sets the specific IP address assigned to the host device within the network configuration.
  final pulumi.Input<String>? address;
  /// Defines the address family (IPv4 or IPv6) for the IP configuration of the host device.
  final pulumi.Input<String>? family;
  /// Specifies the prefix length for the IP address of the host device, determining the subnet.
  final pulumi.Input<double>? prefix;

  /// Creates a new [DomainDevicesHostdevCapsNetIp].
  /// [address] Sets the specific IP address assigned to the host device within the network configuration.
  /// [family] Defines the address family (IPv4 or IPv6) for the IP configuration of the host device.
  /// [prefix] Specifies the prefix length for the IP address of the host device, determining the subnet.
  DomainDevicesHostdevCapsNetIp({
    this.address,
    this.family,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'family': ?family,
      'prefix': ?prefix,
    };
  }

  factory DomainDevicesHostdevCapsNetIp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNetIp(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

