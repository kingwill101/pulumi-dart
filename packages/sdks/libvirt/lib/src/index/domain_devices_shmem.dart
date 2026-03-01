// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_shmem_acpi.dart';
import 'domain_devices_shmem_alias.dart';
import 'domain_devices_shmem_model.dart';
import 'domain_devices_shmem_msi.dart';
import 'domain_devices_shmem_server.dart';

class DomainDevicesShmem {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesShmemAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesShmemAlias? alias;
  /// Configures the model type for the shared memory device, defining the emulated functionality.
  final DomainDevicesShmemModel? model;
  /// Configures MSI settings for the shared memory device, enhancing interrupt handling.
  final DomainDevicesShmemMsi? msi;
  /// Specifies the name attribute for the shared memory device, acting as its identifier.
  final String name;
  /// Sets the role for the shared memory device, defining its purpose within the configuration.
  final String? role;
  /// Configures server parameters for the shared memory device, enabling network-based communication.
  final DomainDevicesShmemServer? server;
  /// Configures the size of the shared memory device allocated for the guest.
  final double? size;
  /// Sets the unit of measurement for the shared memory size, such as bytes or kilobytes.
  final String? sizeUnit;

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
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'model': ?model == null ? null : model!.toMap(),
      'msi': ?msi == null ? null : msi!.toMap(),
      'name': name,
      'role': ?role,
      'server': ?server == null ? null : server!.toMap(),
      'size': ?size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesShmem.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmem(
      acpi: map['acpi'] == null ? null : DomainDevicesShmemAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesShmemAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : DomainDevicesShmemModel.fromMap((map['model'] as Map).cast<String, dynamic>()),
      msi: map['msi'] == null ? null : DomainDevicesShmemMsi.fromMap((map['msi'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      server: map['server'] == null ? null : DomainDevicesShmemServer.fromMap((map['server'] as Map).cast<String, dynamic>()),
      size: map['size'] == null ? null : map['size'] as double,
      sizeUnit: map['sizeUnit'] == null ? null : map['sizeUnit'] as String,
    );
  }
}

