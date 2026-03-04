// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
