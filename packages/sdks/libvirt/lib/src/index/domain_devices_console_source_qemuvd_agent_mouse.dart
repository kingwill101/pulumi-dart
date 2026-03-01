// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesConsoleSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesConsoleSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesConsoleSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesConsoleSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

