// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesParallelSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesParallelSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesParallelSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesParallelSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
