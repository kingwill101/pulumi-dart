// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
