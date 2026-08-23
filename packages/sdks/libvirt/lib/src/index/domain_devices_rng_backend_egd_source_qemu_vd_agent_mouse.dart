// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngBackendEgdSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesRngBackendEgdSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesRngBackendEgdSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
