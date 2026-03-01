// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRedirDevSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesRedirDevSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesRedirDevSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesRedirDevSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

