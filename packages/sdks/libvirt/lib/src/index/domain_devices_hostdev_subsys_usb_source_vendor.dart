// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysUsbSourceVendor {
  /// Specifies the unique identifier for the vendor of the USB device.
  final pulumi.Input<String>? id;

  /// Creates a new [DomainDevicesHostdevSubsysUsbSourceVendor].
  /// [id] Specifies the unique identifier for the vendor of the USB device.
  DomainDevicesHostdevSubsysUsbSourceVendor({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesHostdevSubsysUsbSourceVendor.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysUsbSourceVendor(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

