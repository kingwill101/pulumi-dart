// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_udp_local.dart';

class DomainDevicesInterfaceSourceUdp {
  /// Defines the UDP address for the network interface, specifying where UDP packets are sent or received.
  final String? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final DomainDevicesInterfaceSourceUdpLocal? local;
  /// Defines the UDP port number for the network interface, determining the endpoint for UDP communications.
  final double? port;

  /// Creates a new [DomainDevicesInterfaceSourceUdp].
  /// [address] Defines the UDP address for the network interface, specifying where UDP packets are sent or received.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Defines the UDP port number for the network interface, determining the endpoint for UDP communications.
  DomainDevicesInterfaceSourceUdp({
    this.address,
    this.local,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'local': ?local == null ? null : local!.toMap(),
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceUdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceUdp(
      address: map['address'] == null ? null : map['address'] as String,
      local: map['local'] == null ? null : DomainDevicesInterfaceSourceUdpLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

