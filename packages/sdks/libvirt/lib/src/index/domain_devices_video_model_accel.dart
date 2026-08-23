// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesVideoModelAccel {
  /// Enables or disables 2D acceleration for the video device.
  final pulumi.Input<String>? accel2d;
  /// Enables or disables 3D acceleration for the video device.
  final pulumi.Input<String>? accel3d;
  /// Defines the render node for the video device's acceleration features.
  final pulumi.Input<String>? renderNode;

  /// Creates a new [DomainDevicesVideoModelAccel].
  /// [accel2d] Enables or disables 2D acceleration for the video device.
  /// [accel3d] Enables or disables 3D acceleration for the video device.
  /// [renderNode] Defines the render node for the video device's acceleration features.
  const DomainDevicesVideoModelAccel({
    this.accel2d,
    this.accel3d,
    this.renderNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accel2d': ?accel2d,
      'accel3d': ?accel3d,
      'renderNode': ?renderNode,
    };
  }

  factory DomainDevicesVideoModelAccel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoModelAccel(
      accel2d: (() { final guardedValue = map['accel2d']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accel3d: (() { final guardedValue = map['accel3d']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renderNode: (() { final guardedValue = map['renderNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
