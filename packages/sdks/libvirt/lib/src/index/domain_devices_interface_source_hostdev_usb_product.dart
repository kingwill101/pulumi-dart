// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceHostdevUsbProduct {
  /// Specifies the unique identifier for the vendor of the USB device.
  final pulumi.Input<String>? id;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevUsbProduct].
  /// [id] Specifies the unique identifier for the vendor of the USB device.
  DomainDevicesInterfaceSourceHostdevUsbProduct({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory DomainDevicesInterfaceSourceHostdevUsbProduct.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesInterfaceSourceHostdevUsbProduct(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
