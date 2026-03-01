// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesSerialSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesSerialSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesSerialSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

