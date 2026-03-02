// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceUdpLocal {
  /// Specifies the local address for UDP communications on the network interface.
  final pulumi.Input<String>? address;
  /// Sets the local port number for UDP traffic on the network interface.
  final pulumi.Input<double>? port;

  /// Creates a new [DomainDevicesInterfaceSourceUdpLocal].
  /// [address] Specifies the local address for UDP communications on the network interface.
  /// [port] Sets the local port number for UDP traffic on the network interface.
  DomainDevicesInterfaceSourceUdpLocal({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceUdpLocal.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceUdpLocal(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as double).input(),
    );
  }
}

