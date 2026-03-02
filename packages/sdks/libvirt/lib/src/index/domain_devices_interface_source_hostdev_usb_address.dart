// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceHostdevUsbAddress {
  /// Sets the bus identifier where the USB device resides.
  final pulumi.Input<double>? bus;
  /// Specifies the device identifier corresponding to the USB device.
  final pulumi.Input<double>? device;
  /// Indicates the port number for the USB device connection.
  final pulumi.Input<String>? port;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevUsbAddress].
  /// [bus] Sets the bus identifier where the USB device resides.
  /// [device] Specifies the device identifier corresponding to the USB device.
  /// [port] Indicates the port number for the USB device connection.
  DomainDevicesInterfaceSourceHostdevUsbAddress({
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
      bus: map['bus'] == null ? null : (map['bus'] as double).input(),
      device: map['device'] == null ? null : (map['device'] as double).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

