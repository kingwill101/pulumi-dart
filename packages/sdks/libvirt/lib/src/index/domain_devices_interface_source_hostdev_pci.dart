// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_hostdev_pci_address.dart';

class DomainDevicesInterfaceSourceHostdevPci {
  /// Defines the address settings for the PCI device source.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdevPciAddress>? address;
  /// Controls whether write filtering is enabled for the PCI device source.
  final pulumi.Input<String>? writeFiltering;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevPci].
  /// [address] Defines the address settings for the PCI device source.
  /// [writeFiltering] Controls whether write filtering is enabled for the PCI device source.
  DomainDevicesInterfaceSourceHostdevPci({
    this.address,
    this.writeFiltering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdevPciAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'writeFiltering': ?writeFiltering,
    };
  }

  factory DomainDevicesInterfaceSourceHostdevPci.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevPci(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceHostdevPciAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeFiltering: (() { final guardedValue = map['writeFiltering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

