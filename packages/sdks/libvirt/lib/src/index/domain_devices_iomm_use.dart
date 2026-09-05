// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_iomm_use_acpi.dart';
import 'domain_devices_iomm_use_alias.dart';
import 'domain_devices_iomm_use_driver.dart';

class DomainDevicesIommUse {
  /// Configures ACPI Error Record Serialization Table (ERST) parameters associated with the pstore device for recording crash logs.
  final pulumi.Input<DomainDevicesIommUseAcpi?>? acpi;
  /// Specifies the guest bus address at which the pstore device is attached (bus/slot/function details), if the hypervisor allows explicit placement.
  final pulumi.Input<Map<String, dynamic>?>? address;
  /// Assigns an internal alias object to the pstore device, which can be used by management tooling to reference the device.
  final pulumi.Input<DomainDevicesIommUseAlias?>? alias;
  /// Configures model-specific driver options for the IOMMU, such as address width, interrupt remapping, and caching behavior.
  final pulumi.Input<DomainDevicesIommUseDriver?>? driver;
  /// Selects the IOMMU model to expose to the guest; valid values include "intel", "smmuv3", and "virtio" depending on architecture and QEMU version.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String> model;

  /// Creates a new [DomainDevicesIommUse].
  /// [acpi] Configures ACPI Error Record Serialization Table (ERST) parameters associated with the pstore device for recording crash logs.
  /// [address] Specifies the guest bus address at which the pstore device is attached (bus/slot/function details), if the hypervisor allows explicit placement.
  /// [alias] Assigns an internal alias object to the pstore device, which can be used by management tooling to reference the device.
  /// [driver] Configures model-specific driver options for the IOMMU, such as address width, interrupt remapping, and caching behavior.
  /// [model] Selects the IOMMU model to expose to the guest; valid values include "intel", "smmuv3", and "virtio" depending on architecture and QEMU version.
  const DomainDevicesIommUse({
    this.acpi,
    this.address,
    this.alias,
    this.driver,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommUseAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommUseAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommUseDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'model': model,
    };
  }

  factory DomainDevicesIommUse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommUse(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommUseAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommUseAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommUseDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: pulumi.Input.fromValue(map['model'] as String),
    );
  }
}
