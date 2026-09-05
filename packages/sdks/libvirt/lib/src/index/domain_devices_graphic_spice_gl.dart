// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceGl {
  /// Enables or disables OpenGL support for graphical rendering in the Spice channel.
  final pulumi.Input<String?>? enable;
  /// Specifies the render node to be used for OpenGL rendering in the Spice graphical environment.
  final pulumi.Input<String?>? renderNode;

  /// Creates a new [DomainDevicesGraphicSpiceGl].
  /// [enable] Enables or disables OpenGL support for graphical rendering in the Spice channel.
  /// [renderNode] Specifies the render node to be used for OpenGL rendering in the Spice graphical environment.
  const DomainDevicesGraphicSpiceGl({
    this.enable,
    this.renderNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'renderNode': ?renderNode,
    };
  }

  factory DomainDevicesGraphicSpiceGl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceGl(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renderNode: (() { final guardedValue = map['renderNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
