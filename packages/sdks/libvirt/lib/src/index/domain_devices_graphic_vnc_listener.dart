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
  DomainDevicesGraphicVncListener({
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
      address: map['address'] == null ? null : (DomainDevicesGraphicVncListenerAddress.fromMap((map['address']! as Map).cast<String, dynamic>())).input(),
      network: map['network'] == null ? null : (DomainDevicesGraphicVncListenerNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      socket: map['socket'] == null ? null : (DomainDevicesGraphicVncListenerSocket.fromMap((map['socket']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

