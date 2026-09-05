// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicDbusGl {
  /// Configures whether OpenGL support is enabled in the D-Bus graphics settings.
  final pulumi.Input<String?>? enable;
  /// Sets the render node for OpenGL in the D-Bus graphics configuration.
  final pulumi.Input<String?>? renderNode;

  /// Creates a new [DomainDevicesGraphicDbusGl].
  /// [enable] Configures whether OpenGL support is enabled in the D-Bus graphics settings.
  /// [renderNode] Sets the render node for OpenGL in the D-Bus graphics configuration.
  const DomainDevicesGraphicDbusGl({
    this.enable,
    this.renderNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'renderNode': ?renderNode,
    };
  }

  factory DomainDevicesGraphicDbusGl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicDbusGl(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renderNode: (() { final guardedValue = map['renderNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
