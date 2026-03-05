// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_rdp_listener_address.dart';
import 'domain_devices_graphic_rdp_listener_network.dart';
import 'domain_devices_graphic_rdp_listener_socket.dart';

class DomainDevicesGraphicRdpListener {
  /// Specifies the address settings for the Spice listener.
  final pulumi.Input<DomainDevicesGraphicRdpListenerAddress>? address;
  /// Defines network listener settings for the Spice channel, focusing on network-based connections.
  final pulumi.Input<DomainDevicesGraphicRdpListenerNetwork>? network;
  /// Configures socket listener settings for the Spice channel, enabling socket-based connections.
  final pulumi.Input<DomainDevicesGraphicRdpListenerSocket>? socket;

  /// Creates a new [DomainDevicesGraphicRdpListener].
  /// [address] Specifies the address settings for the Spice listener.
  /// [network] Defines network listener settings for the Spice channel, focusing on network-based connections.
  /// [socket] Configures socket listener settings for the Spice channel, enabling socket-based connections.
  DomainDevicesGraphicRdpListener({
    this.address,
    this.network,
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicRdpListenerAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicRdpListenerNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'socket': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicRdpListenerSocket, Map<String, dynamic>>(socket, (value) => value.toMap()),
    };
  }

  factory DomainDevicesGraphicRdpListener.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListener(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicRdpListenerAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicRdpListenerNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      socket: (() { final guardedValue = map['socket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicRdpListenerSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

