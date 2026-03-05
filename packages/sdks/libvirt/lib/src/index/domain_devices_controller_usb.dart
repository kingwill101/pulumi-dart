// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_usb_master.dart';

class DomainDevicesControllerUsb {
  /// Specifies the master configuration for the USB controller device.
  final pulumi.Input<DomainDevicesControllerUsbMaster>? master;
  /// Configures the number of ports available on the USB controller device.
  final pulumi.Input<double>? port;

  /// Creates a new [DomainDevicesControllerUsb].
  /// [master] Specifies the master configuration for the USB controller device.
  /// [port] Configures the number of ports available on the USB controller device.
  DomainDevicesControllerUsb({
    this.master,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'master': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerUsbMaster, Map<String, dynamic>>(master, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory DomainDevicesControllerUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerUsb(
      master: (() { final guardedValue = map['master']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerUsbMaster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

