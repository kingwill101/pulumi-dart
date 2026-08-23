// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceHostdevUsbVendor {
  /// Specifies the unique identifier for the vendor of the USB device.
  final pulumi.Input<String>? id;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevUsbVendor].
  /// [id] Specifies the unique identifier for the vendor of the USB device.
  const DomainDevicesInterfaceSourceHostdevUsbVendor({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesInterfaceSourceHostdevUsbVendor.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevUsbVendor(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
