// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

