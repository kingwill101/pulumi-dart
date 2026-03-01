// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_dbus_gl.dart';

class DomainDevicesGraphicDbus {
  /// Configures the address for the D-Bus connection in the graphics configuration.
  final String? address;
  /// Sets the OpenGL settings for the D-Bus graphics configuration.
  final DomainDevicesGraphicDbusGl? gl;
  /// Enables or disables peer-to-peer memory access in D-Bus for graphics.
  final String? p2p;

  /// Creates a new [DomainDevicesGraphicDbus].
  /// [address] Configures the address for the D-Bus connection in the graphics configuration.
  /// [gl] Sets the OpenGL settings for the D-Bus graphics configuration.
  /// [p2p] Enables or disables peer-to-peer memory access in D-Bus for graphics.
  DomainDevicesGraphicDbus({
    this.address,
    this.gl,
    this.p2p,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'gl': ?gl == null ? null : gl!.toMap(),
      'p2p': ?p2p,
    };
  }

  factory DomainDevicesGraphicDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicDbus(
      address: map['address'] == null ? null : map['address'] as String,
      gl: map['gl'] == null ? null : DomainDevicesGraphicDbusGl.fromMap((map['gl'] as Map).cast<String, dynamic>()),
      p2p: map['p2p'] == null ? null : map['p2p'] as String,
    );
  }
}

