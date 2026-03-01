// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_hostdev_pci_address_zpci.dart';

class DomainDevicesInterfaceSourceHostdevPciAddress {
  /// Sets the bus number for the PCI device's address.
  final double? bus;
  /// Specifies the domain number for the PCI device's address.
  final double? domain;
  /// Defines the function number of the PCI device's address.
  final double? function;
  /// Indicates whether multi-function capability is enabled for the PCI device.
  final String? multiFunction;
  /// Specifies the slot number in the PCI bus for the device.
  final double? slot;
  /// Configures the settings specific to zPCI addressing for the PCI device.
  final DomainDevicesInterfaceSourceHostdevPciAddressZpci? zpci;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevPciAddress].
  /// [bus] Sets the bus number for the PCI device's address.
  /// [domain] Specifies the domain number for the PCI device's address.
  /// [function] Defines the function number of the PCI device's address.
  /// [multiFunction] Indicates whether multi-function capability is enabled for the PCI device.
  /// [slot] Specifies the slot number in the PCI bus for the device.
  /// [zpci] Configures the settings specific to zPCI addressing for the PCI device.
  DomainDevicesInterfaceSourceHostdevPciAddress({
    this.bus,
    this.domain,
    this.function,
    this.multiFunction,
    this.slot,
    this.zpci,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'domain': ?domain,
      'function': ?function,
      'multiFunction': ?multiFunction,
      'slot': ?slot,
      'zpci': ?zpci == null ? null : zpci!.toMap(),
    };
  }

  factory DomainDevicesInterfaceSourceHostdevPciAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevPciAddress(
      bus: map['bus'] == null ? null : map['bus'] as double,
      domain: map['domain'] == null ? null : map['domain'] as double,
      function: map['function'] == null ? null : map['function'] as double,
      multiFunction: map['multiFunction'] == null ? null : map['multiFunction'] as String,
      slot: map['slot'] == null ? null : map['slot'] as double,
      zpci: map['zpci'] == null ? null : DomainDevicesInterfaceSourceHostdevPciAddressZpci.fromMap((map['zpci'] as Map).cast<String, dynamic>()),
    );
  }
}

