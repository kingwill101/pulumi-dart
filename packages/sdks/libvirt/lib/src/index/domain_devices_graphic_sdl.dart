// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_sdl_gl.dart';

class DomainDevicesGraphicSdl {
  /// Sets the display attribute for SDL graphics configuration.
  final pulumi.Input<String>? display;

  /// Configures whether the SDL graphics output should launch in fullscreen mode.
  final pulumi.Input<String>? fullScreen;

  /// Sets the OpenGL settings specific to the SDL graphics configuration.
  final pulumi.Input<DomainDevicesGraphicSdlGl>? gl;

  /// Configures X authentication for the SDL graphics display.
  final pulumi.Input<String>? xauth;

  /// Creates a new [DomainDevicesGraphicSdl].
  /// [display] Sets the display attribute for SDL graphics configuration.
  /// [fullScreen] Configures whether the SDL graphics output should launch in fullscreen mode.
  /// [gl] Sets the OpenGL settings specific to the SDL graphics configuration.
  /// [xauth] Configures X authentication for the SDL graphics display.
  DomainDevicesGraphicSdl({this.display, this.fullScreen, this.gl, this.xauth});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'display': ?display,
      'fullScreen': ?fullScreen,
      'gl':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesGraphicSdlGl,
            Map<String, dynamic>
          >(gl, (value) => value.toMap()),
      'xauth': ?xauth,
    };
  }

  factory DomainDevicesGraphicSdl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSdl(
      display: (() {
        final guardedValue = map['display'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fullScreen: (() {
        final guardedValue = map['fullScreen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gl: (() {
        final guardedValue = map['gl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesGraphicSdlGl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      xauth: (() {
        final guardedValue = map['xauth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
