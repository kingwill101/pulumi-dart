// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_iommu_acpi.dart';
import 'domain_devices_iommu_alias.dart';
import 'domain_devices_iommu_driver.dart';

class DomainDevicesIommu {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesIommuAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesIommuAlias>? alias;
  /// Specifies the driver settings for the IOMMU device.
  final pulumi.Input<DomainDevicesIommuDriver>? driver;
  /// Sets the model for the IOMMU device, determining its capabilities and behavior.
  final pulumi.Input<String> model;

  /// Creates a new [DomainDevicesIommu].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [driver] Specifies the driver settings for the IOMMU device.
  /// [model] Sets the model for the IOMMU device, determining its capabilities and behavior.
  const DomainDevicesIommu({
    this.acpi,
    this.address,
    this.alias,
    this.driver,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommuAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommuAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommuDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'model': model,
    };
  }

  factory DomainDevicesIommu.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommu(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommuAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommuAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommuDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: pulumi.Input.fromValue(map['model'] as String),
    );
  }
}

