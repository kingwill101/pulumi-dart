// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceVhostUserQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainOsNvRamSourceVhostUserQemuVdAgentMouse].
  /// [mode] Required.
  const DomainOsNvRamSourceVhostUserQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainOsNvRamSourceVhostUserQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
