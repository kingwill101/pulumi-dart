// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_nvram_acpi.dart';
import 'domain_devices_nvram_alias.dart';

class DomainDevicesNvram {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesNvramAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesNvramAlias? alias;

  /// Creates a new [DomainDevicesNvram].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  DomainDevicesNvram({
    this.acpi,
    this.address,
    this.alias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
    };
  }

  factory DomainDevicesNvram.fromMap(Map<String, dynamic> map) {
    return DomainDevicesNvram(
      acpi: map['acpi'] == null ? null : DomainDevicesNvramAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesNvramAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
    );
  }
}

