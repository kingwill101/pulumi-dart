// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceReservationsSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesDiskSourceReservationsSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
