// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_controller_usb_master.dart';

class DomainDevicesControllerUsb {
  /// Specifies the master configuration for the USB controller device.
  final DomainDevicesControllerUsbMaster? master;
  /// Configures the number of ports available on the USB controller device.
  final double? port;

  /// Creates a new [DomainDevicesControllerUsb].
  /// [master] Specifies the master configuration for the USB controller device.
  /// [port] Configures the number of ports available on the USB controller device.
  DomainDevicesControllerUsb({
    this.master,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'master': ?master == null ? null : master!.toMap(),
      'port': ?port,
    };
  }

  factory DomainDevicesControllerUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerUsb(
      master: map['master'] == null ? null : DomainDevicesControllerUsbMaster.fromMap((map['master'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

