// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicEglHeadlessGl {
  /// Specifies the render node for the headless EGL graphics OpenGL settings.
  final String? renderNode;

  /// Creates a new [DomainDevicesGraphicEglHeadlessGl].
  /// [renderNode] Specifies the render node for the headless EGL graphics OpenGL settings.
  DomainDevicesGraphicEglHeadlessGl({
    this.renderNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'renderNode': ?renderNode,
    };
  }

  factory DomainDevicesGraphicEglHeadlessGl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicEglHeadlessGl(
      renderNode: map['renderNode'] == null ? null : map['renderNode'] as String,
    );
  }
}

