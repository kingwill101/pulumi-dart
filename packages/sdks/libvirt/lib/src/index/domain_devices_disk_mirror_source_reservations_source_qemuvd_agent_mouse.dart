// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

