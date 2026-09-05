// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_shmem_acpi.dart';
import 'domain_devices_shmem_alias.dart';
import 'domain_devices_shmem_model.dart';
import 'domain_devices_shmem_msi.dart';
import 'domain_devices_shmem_server.dart';

class DomainDevicesShmem {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesShmemAcpi?>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>?>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesShmemAlias?>? alias;
  /// Configures the model type for the shared memory device, defining the emulated functionality.
  final pulumi.Input<DomainDevicesShmemModel?>? model;
  /// Configures MSI settings for the shared memory device, enhancing interrupt handling.
  final pulumi.Input<DomainDevicesShmemMsi?>? msi;
  /// Specifies the name attribute for the shared memory device, acting as its identifier.
  final pulumi.Input<String> name;
  /// Sets the role for the shared memory device, defining its purpose within the configuration.
  final pulumi.Input<String?>? role;
  /// Configures server parameters for the shared memory device, enabling network-based communication.
  final pulumi.Input<DomainDevicesShmemServer?>? server;
  /// Configures the size of the shared memory device allocated for the guest.
  final pulumi.Input<double?>? size;
  /// Sets the unit of measurement for the shared memory size, such as bytes or kilobytes.
  final pulumi.Input<String?>? sizeUnit;

  /// Creates a new [DomainDevicesShmem].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [model] Configures the model type for the shared memory device, defining the emulated functionality.
  /// [msi] Configures MSI settings for the shared memory device, enhancing interrupt handling.
  /// [name] Specifies the name attribute for the shared memory device, acting as its identifier.
  /// [role] Sets the role for the shared memory device, defining its purpose within the configuration.
  /// [server] Configures server parameters for the shared memory device, enabling network-based communication.
  /// [size] Configures the size of the shared memory device allocated for the guest.
  /// [sizeUnit] Sets the unit of measurement for the shared memory size, such as bytes or kilobytes.
  const DomainDevicesShmem({
    this.acpi,
    this.address,
    this.alias,
    this.model,
    this.msi,
    required this.name,
    this.role,
    this.server,
    this.size,
    this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesShmemAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesShmemAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'model': ?pulumi.Input.mapOptionalInputValue<DomainDevicesShmemModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesShmemMsi, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'name': name,
      'role': ?role,
      'server': ?pulumi.Input.mapOptionalInputValue<DomainDevicesShmemServer, Map<String, dynamic>>(server, (value) => value.toMap()),
      'size': ?size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesShmem.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmem(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesShmemAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesShmemAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesShmemModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msi: (() { final guardedValue = map['msi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesShmemMsi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesShmemServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizeUnit: (() { final guardedValue = map['sizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
