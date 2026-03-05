// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceFileTransfer {
  /// Enables or disables file transfer functionality for the Spice connection.
  final pulumi.Input<String> enable;

  /// Creates a new [DomainDevicesGraphicSpiceFileTransfer].
  /// [enable] Enables or disables file transfer functionality for the Spice connection.
  DomainDevicesGraphicSpiceFileTransfer({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory DomainDevicesGraphicSpiceFileTransfer.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceFileTransfer(
      enable: pulumi.Input.fromValue(map['enable'] as String),
    );
  }
}

