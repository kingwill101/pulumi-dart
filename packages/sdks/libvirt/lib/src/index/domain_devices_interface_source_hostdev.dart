// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_hostdev_pci.dart';
import 'domain_devices_interface_source_hostdev_usb.dart';

class DomainDevicesInterfaceSourceHostdev {
  /// Specifies the source configuration for the PCI device being passed through.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdevPci>? pci;
  /// Specifies the source attributes for the USB subsystem device, detailing its origin.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdevUsb>? usb;

  /// Creates a new [DomainDevicesInterfaceSourceHostdev].
  /// [pci] Specifies the source configuration for the PCI device being passed through.
  /// [usb] Specifies the source attributes for the USB subsystem device, detailing its origin.
  DomainDevicesInterfaceSourceHostdev({
    this.pci,
    this.usb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pci': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdevPci, Map<String, dynamic>>(pci, (value) => value.toMap()),
      'usb': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdevUsb, Map<String, dynamic>>(usb, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceHostdev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdev(
      pci: map['pci'] == null ? null : (DomainDevicesInterfaceSourceHostdevPci.fromMap((map['pci']! as Map).cast<String, dynamic>())).input(),
      usb: map['usb'] == null ? null : (DomainDevicesInterfaceSourceHostdevUsb.fromMap((map['usb']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

