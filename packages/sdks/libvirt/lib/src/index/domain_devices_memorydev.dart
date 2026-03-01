// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_memorydev_acpi.dart';
import 'domain_devices_memorydev_alias.dart';
import 'domain_devices_memorydev_source.dart';
import 'domain_devices_memorydev_target.dart';

class DomainDevicesMemorydev {
  /// Sets the access mode for the memory device, controlling how the memory can be utilized.
  final String? access;
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesMemorydevAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesMemorydevAlias? alias;
  /// Configures the discard attribute for the memory device, indicating whether memory should be freed.
  final String? discard;
  /// Sets the model for the memory device, determining its type and capabilities.
  final String model;
  /// Defines the source configuration for the memory device, indicating the memory backing.
  final DomainDevicesMemorydevSource? source;
  /// Configures the target settings for the memory device, defining how it connects to the guest.
  final DomainDevicesMemorydevTarget? target;
  /// Sets the universally unique identifier for the memory device.
  final String? uuid;

  /// Creates a new [DomainDevicesMemorydev].
  /// [access] Sets the access mode for the memory device, controlling how the memory can be utilized.
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [discard] Configures the discard attribute for the memory device, indicating whether memory should be freed.
  /// [model] Sets the model for the memory device, determining its type and capabilities.
  /// [source] Defines the source configuration for the memory device, indicating the memory backing.
  /// [target] Configures the target settings for the memory device, defining how it connects to the guest.
  /// [uuid] Sets the universally unique identifier for the memory device.
  DomainDevicesMemorydev({
    this.access,
    this.acpi,
    this.address,
    this.alias,
    this.discard,
    required this.model,
    this.source,
    this.target,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'discard': ?discard,
      'model': model,
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
      'uuid': ?uuid,
    };
  }

  factory DomainDevicesMemorydev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydev(
      access: map['access'] == null ? null : map['access'] as String,
      acpi: map['acpi'] == null ? null : DomainDevicesMemorydevAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesMemorydevAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      discard: map['discard'] == null ? null : map['discard'] as String,
      model: map['model'] as String,
      source: map['source'] == null ? null : DomainDevicesMemorydevSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesMemorydevTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

