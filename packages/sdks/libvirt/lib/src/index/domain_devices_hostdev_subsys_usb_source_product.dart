// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysUsbSourceProduct {
  /// Specifies the unique identifier for the vendor of the USB device.
  final pulumi.Input<String>? id;

  /// Creates a new [DomainDevicesHostdevSubsysUsbSourceProduct].
  /// [id] Specifies the unique identifier for the vendor of the USB device.
  DomainDevicesHostdevSubsysUsbSourceProduct({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesHostdevSubsysUsbSourceProduct.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysUsbSourceProduct(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

