// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesParallelSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesParallelSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesParallelSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesParallelSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

