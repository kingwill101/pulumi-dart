// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_client_local.dart';

class DomainDevicesInterfaceSourceClient {
  /// Specifies the address of the client for the network interface.
  final pulumi.Input<String>? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final pulumi.Input<DomainDevicesInterfaceSourceClientLocal>? local;
  /// Specifies the port for the client source of the network interface.
  final pulumi.Input<double>? port;

  /// Creates a new [DomainDevicesInterfaceSourceClient].
  /// [address] Specifies the address of the client for the network interface.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Specifies the port for the client source of the network interface.
  const DomainDevicesInterfaceSourceClient({
    this.address,
    this.local,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'local': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceClientLocal, Map<String, dynamic>>(local, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceClient.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceClient(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceClientLocal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
