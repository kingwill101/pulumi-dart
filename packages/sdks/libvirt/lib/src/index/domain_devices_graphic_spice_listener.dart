// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_spice_listener_address.dart';
import 'domain_devices_graphic_spice_listener_network.dart';
import 'domain_devices_graphic_spice_listener_socket.dart';

class DomainDevicesGraphicSpiceListener {
  /// Specifies the address settings for the Spice listener.
  final pulumi.Input<DomainDevicesGraphicSpiceListenerAddress>? address;

  /// Defines network listener settings for the Spice channel, focusing on network-based connections.
  final pulumi.Input<DomainDevicesGraphicSpiceListenerNetwork>? network;

  /// Configures socket listener settings for the Spice channel, enabling socket-based connections.
  final pulumi.Input<DomainDevicesGraphicSpiceListenerSocket>? socket;

  /// Creates a new [DomainDevicesGraphicSpiceListener].
  /// [address] Specifies the address settings for the Spice listener.
  /// [network] Defines network listener settings for the Spice channel, focusing on network-based connections.
  /// [socket] Configures socket listener settings for the Spice channel, enabling socket-based connections.
  DomainDevicesGraphicSpiceListener({this.address, this.network, this.socket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesGraphicSpiceListenerAddress,
            Map<String, dynamic>
          >(address, (value) => value.toMap()),
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesGraphicSpiceListenerNetwork,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'socket':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesGraphicSpiceListenerSocket,
            Map<String, dynamic>
          >(socket, (value) => value.toMap()),
    };
  }

  factory DomainDevicesGraphicSpiceListener.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceListener(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesGraphicSpiceListenerAddress.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesGraphicSpiceListenerNetwork.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      socket: (() {
        final guardedValue = map['socket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesGraphicSpiceListenerSocket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
