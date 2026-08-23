// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
