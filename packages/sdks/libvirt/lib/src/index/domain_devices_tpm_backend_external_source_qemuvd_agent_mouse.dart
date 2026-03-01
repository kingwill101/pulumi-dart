// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

