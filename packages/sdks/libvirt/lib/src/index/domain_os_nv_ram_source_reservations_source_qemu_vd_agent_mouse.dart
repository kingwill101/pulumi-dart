// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse].
  /// [mode] Required.
  const DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
