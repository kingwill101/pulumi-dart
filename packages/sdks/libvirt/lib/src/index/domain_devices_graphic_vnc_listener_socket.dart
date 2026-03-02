// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicVncListenerSocket {
  /// Defines the socket's attributes for listener configurations in the Spice protocol.
  final pulumi.Input<String>? socket;

  /// Creates a new [DomainDevicesGraphicVncListenerSocket].
  /// [socket] Defines the socket's attributes for listener configurations in the Spice protocol.
  DomainDevicesGraphicVncListenerSocket({
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'socket': ?socket,
    };
  }

  factory DomainDevicesGraphicVncListenerSocket.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicVncListenerSocket(
      socket: map['socket'] == null ? null : (map['socket']! as String).input(),
    );
  }
}

