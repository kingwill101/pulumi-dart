// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceHostdevUsbAddress {
  /// Sets the bus identifier where the USB device resides.
  final pulumi.Input<double?>? bus;
  /// Specifies the device identifier corresponding to the USB device.
  final pulumi.Input<double?>? device;
  /// Indicates the port number for the USB device connection.
  final pulumi.Input<String?>? port;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevUsbAddress].
  /// [bus] Sets the bus identifier where the USB device resides.
  /// [device] Specifies the device identifier corresponding to the USB device.
  /// [port] Indicates the port number for the USB device connection.
  const DomainDevicesInterfaceSourceHostdevUsbAddress({
    this.bus,
    this.device,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'device': ?device,
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceHostdevUsbAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevUsbAddress(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
