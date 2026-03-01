// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_mcast_local.dart';

class DomainDevicesInterfaceSourceMcast {
  /// Sets the multicast address for the network interface, defining the destination address for multicast packets.
  final String? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final DomainDevicesInterfaceSourceMcastLocal? local;
  /// Sets the multicast port number for the network interface, determining where multicast packets are sent and received.
  final double? port;

  /// Creates a new [DomainDevicesInterfaceSourceMcast].
  /// [address] Sets the multicast address for the network interface, defining the destination address for multicast packets.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Sets the multicast port number for the network interface, determining where multicast packets are sent and received.
  DomainDevicesInterfaceSourceMcast({
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

  factory DomainDevicesInterfaceSourceMcast.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceMcast(
      address: map['address'] == null ? null : map['address'] as String,
      local: map['local'] == null ? null : DomainDevicesInterfaceSourceMcastLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

