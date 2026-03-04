// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_mcast_local.dart';

class DomainDevicesInterfaceSourceMcast {
  /// Sets the multicast address for the network interface, defining the destination address for multicast packets.
  final pulumi.Input<String>? address;

  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final pulumi.Input<DomainDevicesInterfaceSourceMcastLocal>? local;

  /// Sets the multicast port number for the network interface, determining where multicast packets are sent and received.
  final pulumi.Input<double>? port;

  /// Creates a new [DomainDevicesInterfaceSourceMcast].
  /// [address] Sets the multicast address for the network interface, defining the destination address for multicast packets.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Sets the multicast port number for the network interface, determining where multicast packets are sent and received.
  DomainDevicesInterfaceSourceMcast({this.address, this.local, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'local':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesInterfaceSourceMcastLocal,
            Map<String, dynamic>
          >(local, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceMcast.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceMcast(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      local: (() {
        final guardedValue = map['local'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesInterfaceSourceMcastLocal.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
