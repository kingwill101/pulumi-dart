// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse({required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
