// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_udp_local.dart';

class DomainDevicesInterfaceSourceUdp {
  /// Defines the UDP address for the network interface, specifying where UDP packets are sent or received.
  final pulumi.Input<String?>? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final pulumi.Input<DomainDevicesInterfaceSourceUdpLocal?>? local;
  /// Defines the UDP port number for the network interface, determining the endpoint for UDP communications.
  final pulumi.Input<double?>? port;

  /// Creates a new [DomainDevicesInterfaceSourceUdp].
  /// [address] Defines the UDP address for the network interface, specifying where UDP packets are sent or received.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Defines the UDP port number for the network interface, determining the endpoint for UDP communications.
  const DomainDevicesInterfaceSourceUdp({
    this.address,
    this.local,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'local': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceUdpLocal, Map<String, dynamic>>(local, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceUdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceUdp(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceUdpLocal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
