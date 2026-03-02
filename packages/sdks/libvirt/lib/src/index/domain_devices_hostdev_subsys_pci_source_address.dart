// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_pci_source_address_zpci.dart';

class DomainDevicesHostdevSubsysPciSourceAddress {
  /// Sets the bus number for the PCI device's address.
  final pulumi.Input<double>? bus;
  /// Specifies the domain number for the PCI device's address.
  final pulumi.Input<double>? domain;
  /// Defines the function number of the PCI device's address.
  final pulumi.Input<double>? function;
  /// Indicates whether multi-function capability is enabled for the PCI device.
  final pulumi.Input<String>? multiFunction;
  /// Specifies the slot number in the PCI bus for the device.
  final pulumi.Input<double>? slot;
  /// Configures the settings specific to zPCI addressing for the PCI device.
  final pulumi.Input<DomainDevicesHostdevSubsysPciSourceAddressZpci>? zpci;

  /// Creates a new [DomainDevicesHostdevSubsysPciSourceAddress].
  /// [bus] Sets the bus number for the PCI device's address.
  /// [domain] Specifies the domain number for the PCI device's address.
  /// [function] Defines the function number of the PCI device's address.
  /// [multiFunction] Indicates whether multi-function capability is enabled for the PCI device.
  /// [slot] Specifies the slot number in the PCI bus for the device.
  /// [zpci] Configures the settings specific to zPCI addressing for the PCI device.
  DomainDevicesHostdevSubsysPciSourceAddress({
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
      'zpci': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysPciSourceAddressZpci, Map<String, dynamic>>(zpci, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysPciSourceAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPciSourceAddress(
      bus: map['bus'] == null ? null : (map['bus']! as double).input(),
      domain: map['domain'] == null ? null : (map['domain']! as double).input(),
      function: map['function'] == null ? null : (map['function']! as double).input(),
      multiFunction: map['multiFunction'] == null ? null : (map['multiFunction']! as String).input(),
      slot: map['slot'] == null ? null : (map['slot']! as double).input(),
      zpci: map['zpci'] == null ? null : (DomainDevicesHostdevSubsysPciSourceAddressZpci.fromMap((map['zpci']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

