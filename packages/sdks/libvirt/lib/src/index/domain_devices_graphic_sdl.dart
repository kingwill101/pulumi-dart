// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_sdl_gl.dart';

class DomainDevicesGraphicSdl {
  /// Sets the display attribute for SDL graphics configuration.
  final String? display;
  /// Configures whether the SDL graphics output should launch in fullscreen mode.
  final String? fullScreen;
  /// Sets the OpenGL settings specific to the SDL graphics configuration.
  final DomainDevicesGraphicSdlGl? gl;
  /// Configures X authentication for the SDL graphics display.
  final String? xauth;

  /// Creates a new [DomainDevicesGraphicSdl].
  /// [display] Sets the display attribute for SDL graphics configuration.
  /// [fullScreen] Configures whether the SDL graphics output should launch in fullscreen mode.
  /// [gl] Sets the OpenGL settings specific to the SDL graphics configuration.
  /// [xauth] Configures X authentication for the SDL graphics display.
  DomainDevicesGraphicSdl({
    this.display,
    this.fullScreen,
    this.gl,
    this.xauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'display': ?display,
      'fullScreen': ?fullScreen,
      'gl': ?gl == null ? null : gl!.toMap(),
      'xauth': ?xauth,
    };
  }

  factory DomainDevicesGraphicSdl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSdl(
      display: map['display'] == null ? null : map['display'] as String,
      fullScreen: map['fullScreen'] == null ? null : map['fullScreen'] as String,
      gl: map['gl'] == null ? null : DomainDevicesGraphicSdlGl.fromMap((map['gl'] as Map).cast<String, dynamic>()),
      xauth: map['xauth'] == null ? null : map['xauth'] as String,
    );
  }
}

