// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicSpiceGl {
  /// Enables or disables OpenGL support for graphical rendering in the Spice channel.
  final String? enable;
  /// Specifies the render node to be used for OpenGL rendering in the Spice graphical environment.
  final String? renderNode;

  /// Creates a new [DomainDevicesGraphicSpiceGl].
  /// [enable] Enables or disables OpenGL support for graphical rendering in the Spice channel.
  /// [renderNode] Specifies the render node to be used for OpenGL rendering in the Spice graphical environment.
  DomainDevicesGraphicSpiceGl({
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
      enable: map['enable'] == null ? null : map['enable'] as String,
      renderNode: map['renderNode'] == null ? null : map['renderNode'] as String,
    );
  }
}

