// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LldpNeighborResponse {
  /// The descriptive information about the port on the connected device.
  final pulumi.Input<String> portDescription;
  /// The system-assigned name of the port on the connected device.
  final pulumi.Input<String> portName;
  /// The descriptive information about the connected device.
  final pulumi.Input<String> systemDescription;
  /// The system-assigned name of the connected device.
  final pulumi.Input<String> systemName;

  /// Creates a new [LldpNeighborResponse].
  /// [portDescription] The descriptive information about the port on the connected device.
  /// [portName] The system-assigned name of the port on the connected device.
  /// [systemDescription] The descriptive information about the connected device.
  /// [systemName] The system-assigned name of the connected device.
  LldpNeighborResponse({
    required this.portDescription,
    required this.portName,
    required this.systemDescription,
    required this.systemName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portDescription': portDescription,
      'portName': portName,
      'systemDescription': systemDescription,
      'systemName': systemName,
    };
  }

  factory LldpNeighborResponse.fromMap(Map<String, dynamic> map) {
    return LldpNeighborResponse(
      portDescription: (map['portDescription'] as String).input(),
      portName: (map['portName'] as String).input(),
      systemDescription: (map['systemDescription'] as String).input(),
      systemName: (map['systemName'] as String).input(),
    );
  }
}

