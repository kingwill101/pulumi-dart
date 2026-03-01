// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

