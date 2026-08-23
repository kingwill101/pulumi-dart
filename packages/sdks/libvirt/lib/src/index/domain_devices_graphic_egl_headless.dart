// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_egl_headless_gl.dart';

class DomainDevicesGraphicEglHeadless {
  /// Sets OpenGL configuration options for the headless EGL graphics display.
  final pulumi.Input<DomainDevicesGraphicEglHeadlessGl>? gl;

  /// Creates a new [DomainDevicesGraphicEglHeadless].
  /// [gl] Sets OpenGL configuration options for the headless EGL graphics display.
  const DomainDevicesGraphicEglHeadless({
    this.gl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicEglHeadlessGl, Map<String, dynamic>>(gl, (value) => value.toMap()),
    };
  }

  factory DomainDevicesGraphicEglHeadless.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicEglHeadless(
      gl: (() { final guardedValue = map['gl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicEglHeadlessGl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
