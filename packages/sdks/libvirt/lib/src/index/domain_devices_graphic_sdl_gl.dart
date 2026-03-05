// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSdlGl {
  /// Configures whether OpenGL support is enabled in SDL graphics settings.
  final pulumi.Input<String>? enable;

  /// Creates a new [DomainDevicesGraphicSdlGl].
  /// [enable] Configures whether OpenGL support is enabled in SDL graphics settings.
  DomainDevicesGraphicSdlGl({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory DomainDevicesGraphicSdlGl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSdlGl(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

