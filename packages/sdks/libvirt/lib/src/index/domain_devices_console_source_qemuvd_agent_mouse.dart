// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesConsoleSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesConsoleSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesConsoleSourceQemuvdAgentMouse({required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory DomainDevicesConsoleSourceQemuvdAgentMouse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesConsoleSourceQemuvdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
