// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_server_local.dart';

class DomainDevicesInterfaceSourceServer {
  /// Sets the address of the server that the network interface will connect to.
  final String? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final DomainDevicesInterfaceSourceServerLocal? local;
  /// Sets the port number used by the network interface to connect to the specified server.
  final double? port;

  /// Creates a new [DomainDevicesInterfaceSourceServer].
  /// [address] Sets the address of the server that the network interface will connect to.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Sets the port number used by the network interface to connect to the specified server.
  DomainDevicesInterfaceSourceServer({
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

  factory DomainDevicesInterfaceSourceServer.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceServer(
      address: map['address'] == null ? null : map['address'] as String,
      local: map['local'] == null ? null : DomainDevicesInterfaceSourceServerLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

