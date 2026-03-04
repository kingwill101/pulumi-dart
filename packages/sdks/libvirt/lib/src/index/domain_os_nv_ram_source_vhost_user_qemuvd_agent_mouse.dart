// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceVhostUserQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainOsNvRamSourceVhostUserQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainOsNvRamSourceVhostUserQemuvdAgentMouse({required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory DomainOsNvRamSourceVhostUserQemuvdAgentMouse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainOsNvRamSourceVhostUserQemuvdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
