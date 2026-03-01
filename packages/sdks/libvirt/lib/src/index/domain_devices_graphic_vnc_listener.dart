// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_vnc_listener_address.dart';
import 'domain_devices_graphic_vnc_listener_network.dart';
import 'domain_devices_graphic_vnc_listener_socket.dart';

class DomainDevicesGraphicVncListener {
  /// Specifies the address settings for the Spice listener.
  final DomainDevicesGraphicVncListenerAddress? address;
  /// Defines network listener settings for the Spice channel, focusing on network-based connections.
  final DomainDevicesGraphicVncListenerNetwork? network;
  /// Configures socket listener settings for the Spice channel, enabling socket-based connections.
  final DomainDevicesGraphicVncListenerSocket? socket;

  /// Creates a new [DomainDevicesGraphicVncListener].
  /// [address] Specifies the address settings for the Spice listener.
  /// [network] Defines network listener settings for the Spice channel, focusing on network-based connections.
  /// [socket] Configures socket listener settings for the Spice channel, enabling socket-based connections.
  DomainDevicesGraphicVncListener({
    this.address,
    this.network,
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address == null ? null : address!.toMap(),
      'network': ?network == null ? null : network!.toMap(),
      'socket': ?socket == null ? null : socket!.toMap(),
    };
  }

  factory DomainDevicesGraphicVncListener.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicVncListener(
      address: map['address'] == null ? null : DomainDevicesGraphicVncListenerAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      network: map['network'] == null ? null : DomainDevicesGraphicVncListenerNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      socket: map['socket'] == null ? null : DomainDevicesGraphicVncListenerSocket.fromMap((map['socket'] as Map).cast<String, dynamic>()),
    );
  }
}

