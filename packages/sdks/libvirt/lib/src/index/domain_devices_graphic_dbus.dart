// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_dbus_gl.dart';

class DomainDevicesGraphicDbus {
  /// Configures the address for the D-Bus connection in the graphics configuration.
  final pulumi.Input<String>? address;

  /// Sets the OpenGL settings for the D-Bus graphics configuration.
  final pulumi.Input<DomainDevicesGraphicDbusGl>? gl;

  /// Enables or disables peer-to-peer memory access in D-Bus for graphics.
  final pulumi.Input<String>? p2p;

  /// Creates a new [DomainDevicesGraphicDbus].
  /// [address] Configures the address for the D-Bus connection in the graphics configuration.
  /// [gl] Sets the OpenGL settings for the D-Bus graphics configuration.
  /// [p2p] Enables or disables peer-to-peer memory access in D-Bus for graphics.
  DomainDevicesGraphicDbus({this.address, this.gl, this.p2p});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'gl':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesGraphicDbusGl,
            Map<String, dynamic>
          >(gl, (value) => value.toMap()),
      'p2p': ?p2p,
    };
  }

  factory DomainDevicesGraphicDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicDbus(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gl: (() {
        final guardedValue = map['gl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesGraphicDbusGl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      p2p: (() {
        final guardedValue = map['p2p'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
