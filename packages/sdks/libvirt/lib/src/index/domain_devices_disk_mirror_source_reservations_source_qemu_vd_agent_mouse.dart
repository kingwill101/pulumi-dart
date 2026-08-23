// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
