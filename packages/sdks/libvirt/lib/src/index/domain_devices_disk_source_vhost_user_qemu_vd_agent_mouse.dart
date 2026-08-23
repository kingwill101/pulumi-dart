// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceVhostUserQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesDiskSourceVhostUserQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesDiskSourceVhostUserQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskSourceVhostUserQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
