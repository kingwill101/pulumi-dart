// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceIp {
  /// Specifies the IP address assigned to the interface.
  final pulumi.Input<String> address;
  /// Defines the address family (IPv4 or IPv6) for the interface's IP configuration.
  final pulumi.Input<String>? family;
  /// Sets the peer IP address for communication over the interface.
  final pulumi.Input<String>? peer;
  /// Configures the prefix length for the IP address subnet.
  final pulumi.Input<double>? prefix;

  /// Creates a new [DomainDevicesInterfaceIp].
  /// [address] Specifies the IP address assigned to the interface.
  /// [family] Defines the address family (IPv4 or IPv6) for the interface's IP configuration.
  /// [peer] Sets the peer IP address for communication over the interface.
  /// [prefix] Configures the prefix length for the IP address subnet.
  DomainDevicesInterfaceIp({
    required this.address,
    this.family,
    this.peer,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'family': ?family,
      'peer': ?peer,
      'prefix': ?prefix,
    };
  }

  factory DomainDevicesInterfaceIp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceIp(
      address: (map['address'] as String).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      peer: map['peer'] == null ? null : (map['peer']! as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']! as double).input(),
    );
  }
}

