// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicDesktop {
  /// Sets the display option for the desktop graphics configuration.
  final pulumi.Input<String>? display;

  /// Configures the fullscreen setting for the desktop graphics display.
  final pulumi.Input<String>? fullScreen;

  /// Creates a new [DomainDevicesGraphicDesktop].
  /// [display] Sets the display option for the desktop graphics configuration.
  /// [fullScreen] Configures the fullscreen setting for the desktop graphics display.
  DomainDevicesGraphicDesktop({this.display, this.fullScreen});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'display': ?display, 'fullScreen': ?fullScreen};
  }

  factory DomainDevicesGraphicDesktop.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicDesktop(
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
    );
  }
}
