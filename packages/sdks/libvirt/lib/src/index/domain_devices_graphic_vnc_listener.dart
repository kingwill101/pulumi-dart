// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_vnc_listener_address.dart';
import 'domain_devices_graphic_vnc_listener_network.dart';
import 'domain_devices_graphic_vnc_listener_socket.dart';

class DomainDevicesGraphicVncListener {
  /// Specifies the address settings for the Spice listener.
  final pulumi.Input<DomainDevicesGraphicVncListenerAddress>? address;
  /// Defines network listener settings for the Spice channel, focusing on network-based connections.
  final pulumi.Input<DomainDevicesGraphicVncListenerNetwork>? network;
  /// Configures socket listener settings for the Spice channel, enabling socket-based connections.
  final pulumi.Input<DomainDevicesGraphicVncListenerSocket>? socket;

  /// Creates a new [DomainDevicesGraphicVncListener].
  /// [address] Specifies the address settings for the Spice listener.
  /// [network] Defines network listener settings for the Spice channel, focusing on network-based connections.
  /// [socket] Configures socket listener settings for the Spice channel, enabling socket-based connections.
  const DomainDevicesGraphicVncListener({
    this.address,
    this.network,
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicVncListenerAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicVncListenerNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'socket': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicVncListenerSocket, Map<String, dynamic>>(socket, (value) => value.toMap()),
    };
  }

  factory DomainDevicesGraphicVncListener.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicVncListener(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicVncListenerAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicVncListenerNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      socket: (() { final guardedValue = map['socket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicVncListenerSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
