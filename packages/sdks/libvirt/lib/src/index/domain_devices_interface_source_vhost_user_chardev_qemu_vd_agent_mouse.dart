// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
