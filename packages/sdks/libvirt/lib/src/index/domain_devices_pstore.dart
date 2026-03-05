// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_pstore_acpi.dart';
import 'domain_devices_pstore_alias.dart';

class DomainDevicesPstore {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesPstoreAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesPstoreAlias>? alias;
  /// Defines the backend type of the persistent storage device, determining its underlying implementation.
  final pulumi.Input<String> backend;
  /// Specifies the file path for where the persistent store data will be written on the host.
  final pulumi.Input<String> path;
  /// Configures the size of the persistent storage device, determining its capacity for storing logs and states.
  final pulumi.Input<double> size;
  /// Sets the unit of measurement for the size of the persistent storage device, indicating its size metric.
  final pulumi.Input<String>? sizeUnit;

  /// Creates a new [DomainDevicesPstore].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Defines the backend type of the persistent storage device, determining its underlying implementation.
  /// [path] Specifies the file path for where the persistent store data will be written on the host.
  /// [size] Configures the size of the persistent storage device, determining its capacity for storing logs and states.
  /// [sizeUnit] Sets the unit of measurement for the size of the persistent storage device, indicating its size metric.
  DomainDevicesPstore({
    this.acpi,
    this.address,
    this.alias,
    required this.backend,
    required this.path,
    required this.size,
    this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesPstoreAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesPstoreAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'backend': backend,
      'path': path,
      'size': size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesPstore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPstore(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesPstoreAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesPstoreAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backend: pulumi.Input.fromValue(map['backend'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      size: pulumi.Input.fromValue(map['size'] as double),
      sizeUnit: (() { final guardedValue = map['sizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

