// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_hostdev_pci_address.dart';

class DomainDevicesInterfaceSourceHostdevPci {
  /// Defines the address settings for the PCI device source.
  final DomainDevicesInterfaceSourceHostdevPciAddress? address;
  /// Controls whether write filtering is enabled for the PCI device source.
  final String? writeFiltering;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevPci].
  /// [address] Defines the address settings for the PCI device source.
  /// [writeFiltering] Controls whether write filtering is enabled for the PCI device source.
  DomainDevicesInterfaceSourceHostdevPci({
    this.address,
    this.writeFiltering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address == null ? null : address!.toMap(),
      'writeFiltering': ?writeFiltering,
    };
  }

  factory DomainDevicesInterfaceSourceHostdevPci.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevPci(
      address: map['address'] == null ? null : DomainDevicesInterfaceSourceHostdevPciAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      writeFiltering: map['writeFiltering'] == null ? null : map['writeFiltering'] as String,
    );
  }
}

