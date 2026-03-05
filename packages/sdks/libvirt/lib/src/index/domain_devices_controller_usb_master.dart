// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesControllerUsbMaster {
  /// Sets the starting port number for the master USB controller device configuration.
  final pulumi.Input<double> startPort;

  /// Creates a new [DomainDevicesControllerUsbMaster].
  /// [startPort] Sets the starting port number for the master USB controller device configuration.
  DomainDevicesControllerUsbMaster({
    required this.startPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startPort': startPort,
    };
  }

  factory DomainDevicesControllerUsbMaster.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerUsbMaster(
      startPort: pulumi.Input.fromValue(map['startPort'] as double),
    );
  }
}

