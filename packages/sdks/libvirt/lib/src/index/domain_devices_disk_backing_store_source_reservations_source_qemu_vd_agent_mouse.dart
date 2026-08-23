// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
