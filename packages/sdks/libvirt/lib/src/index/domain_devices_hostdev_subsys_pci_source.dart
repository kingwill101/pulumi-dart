// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_pci_source_address.dart';

class DomainDevicesHostdevSubsysPciSource {
  /// Defines the address settings for the PCI device source.
  final pulumi.Input<DomainDevicesHostdevSubsysPciSourceAddress>? address;
  /// Controls whether write filtering is enabled for the PCI device source.
  final pulumi.Input<String>? writeFiltering;

  /// Creates a new [DomainDevicesHostdevSubsysPciSource].
  /// [address] Defines the address settings for the PCI device source.
  /// [writeFiltering] Controls whether write filtering is enabled for the PCI device source.
  DomainDevicesHostdevSubsysPciSource({
    this.address,
    this.writeFiltering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysPciSourceAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'writeFiltering': ?writeFiltering,
    };
  }

  factory DomainDevicesHostdevSubsysPciSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPciSource(
      address: map['address'] == null ? null : (DomainDevicesHostdevSubsysPciSourceAddress.fromMap((map['address']! as Map).cast<String, dynamic>())).input(),
      writeFiltering: map['writeFiltering'] == null ? null : (map['writeFiltering']! as String).input(),
    );
  }
}

