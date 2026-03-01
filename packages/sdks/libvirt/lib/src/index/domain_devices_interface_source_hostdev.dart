// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_hostdev_pci.dart';
import 'domain_devices_interface_source_hostdev_usb.dart';

class DomainDevicesInterfaceSourceHostdev {
  /// Specifies the source configuration for the PCI device being passed through.
  final DomainDevicesInterfaceSourceHostdevPci? pci;
  /// Specifies the source attributes for the USB subsystem device, detailing its origin.
  final DomainDevicesInterfaceSourceHostdevUsb? usb;

  /// Creates a new [DomainDevicesInterfaceSourceHostdev].
  /// [pci] Specifies the source configuration for the PCI device being passed through.
  /// [usb] Specifies the source attributes for the USB subsystem device, detailing its origin.
  DomainDevicesInterfaceSourceHostdev({
    this.pci,
    this.usb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pci': ?pci == null ? null : pci!.toMap(),
      'usb': ?usb == null ? null : usb!.toMap(),
    };
  }

  factory DomainDevicesInterfaceSourceHostdev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdev(
      pci: map['pci'] == null ? null : DomainDevicesInterfaceSourceHostdevPci.fromMap((map['pci'] as Map).cast<String, dynamic>()),
      usb: map['usb'] == null ? null : DomainDevicesInterfaceSourceHostdevUsb.fromMap((map['usb'] as Map).cast<String, dynamic>()),
    );
  }
}

