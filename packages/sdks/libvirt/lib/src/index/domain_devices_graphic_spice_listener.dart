// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_spice_listener_address.dart';
import 'domain_devices_graphic_spice_listener_network.dart';
import 'domain_devices_graphic_spice_listener_socket.dart';

class DomainDevicesGraphicSpiceListener {
  /// Specifies the address settings for the Spice listener.
  final DomainDevicesGraphicSpiceListenerAddress? address;
  /// Defines network listener settings for the Spice channel, focusing on network-based connections.
  final DomainDevicesGraphicSpiceListenerNetwork? network;
  /// Configures socket listener settings for the Spice channel, enabling socket-based connections.
  final DomainDevicesGraphicSpiceListenerSocket? socket;

  /// Creates a new [DomainDevicesGraphicSpiceListener].
  /// [address] Specifies the address settings for the Spice listener.
  /// [network] Defines network listener settings for the Spice channel, focusing on network-based connections.
  /// [socket] Configures socket listener settings for the Spice channel, enabling socket-based connections.
  DomainDevicesGraphicSpiceListener({
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

  factory DomainDevicesGraphicSpiceListener.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceListener(
      address: map['address'] == null ? null : DomainDevicesGraphicSpiceListenerAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      network: map['network'] == null ? null : DomainDevicesGraphicSpiceListenerNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      socket: map['socket'] == null ? null : DomainDevicesGraphicSpiceListenerSocket.fromMap((map['socket'] as Map).cast<String, dynamic>()),
    );
  }
}

