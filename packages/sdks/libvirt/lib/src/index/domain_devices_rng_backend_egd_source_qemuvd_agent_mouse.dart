// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngBackendEgdSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesRngBackendEgdSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesRngBackendEgdSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceQemuvdAgentMouse(
      mode: (map['mode'] as String).input(),
    );
  }
}

