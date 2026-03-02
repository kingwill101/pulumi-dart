// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_server_local.dart';

class DomainDevicesInterfaceSourceServer {
  /// Sets the address of the server that the network interface will connect to.
  final pulumi.Input<String>? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final pulumi.Input<DomainDevicesInterfaceSourceServerLocal>? local;
  /// Sets the port number used by the network interface to connect to the specified server.
  final pulumi.Input<double>? port;

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
      'local': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceServerLocal, Map<String, dynamic>>(local, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceServer.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceServer(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      local: map['local'] == null ? null : (DomainDevicesInterfaceSourceServerLocal.fromMap((map['local'] as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port'] as double).input(),
    );
  }
}

