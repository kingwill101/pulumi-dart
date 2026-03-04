// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceListenerSocket {
  /// Defines the socket's attributes for listener configurations in the Spice protocol.
  final pulumi.Input<String>? socket;

  /// Creates a new [DomainDevicesGraphicSpiceListenerSocket].
  /// [socket] Defines the socket's attributes for listener configurations in the Spice protocol.
  DomainDevicesGraphicSpiceListenerSocket({this.socket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'socket': ?socket};
  }

  factory DomainDevicesGraphicSpiceListenerSocket.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesGraphicSpiceListenerSocket(
      socket: (() {
        final guardedValue = map['socket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
