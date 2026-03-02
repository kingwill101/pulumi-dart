// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_shmem_acpi.dart';
import 'domain_devices_shmem_alias.dart';
import 'domain_devices_shmem_model.dart';
import 'domain_devices_shmem_msi.dart';
import 'domain_devices_shmem_server.dart';

class DomainDevicesShmem {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesShmemAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesShmemAlias>? alias;
  /// Configures the model type for the shared memory device, defining the emulated functionality.
  final pulumi.Input<DomainDevicesShmemModel>? model;
  /// Configures MSI settings for the shared memory device, enhancing interrupt handling.
  final pulumi.Input<DomainDevicesShmemMsi>? msi;
  /// Specifies the name attribute for the shared memory device, acting as its identifier.
  final pulumi.Input<String> name;
  /// Sets the role for the shared memory device, defining its purpose within the configuration.
  final pulumi.Input<String>? role;
  /// Configures server parameters for the shared memory device, enabling network-based communication.
  final pulumi.Input<DomainDevicesShmemServer>? server;
  /// Configures the size of the shared memory device allocated for the guest.
  final pulumi.Input<double>? size;
  /// Sets the unit of measurement for the shared memory size, such as bytes or kilobytes.
  final pulumi.Input<String>? sizeUnit;

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
  DomainDevicesShmem({
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
      acpi: map['acpi'] == null ? null : (DomainDevicesShmemAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesShmemAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (DomainDevicesShmemModel.fromMap((map['model']! as Map).cast<String, dynamic>())).input(),
      msi: map['msi'] == null ? null : (DomainDevicesShmemMsi.fromMap((map['msi']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      server: map['server'] == null ? null : (DomainDevicesShmemServer.fromMap((map['server']! as Map).cast<String, dynamic>())).input(),
      size: map['size'] == null ? null : (map['size']! as double).input(),
      sizeUnit: map['sizeUnit'] == null ? null : (map['sizeUnit']! as String).input(),
    );
  }
}

