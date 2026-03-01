// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_input_acpi.dart';
import 'domain_devices_input_alias.dart';
import 'domain_devices_input_driver.dart';
import 'domain_devices_input_source.dart';

class DomainDevicesInput {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesInputAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesInputAlias? alias;
  /// Indicates the bus type for the input device configuration.
  final String? bus;
  /// Configures the driver associated with the input device.
  final DomainDevicesInputDriver? driver;
  /// Specifies the model type for the input device.
  final String? model;
  /// Defines the source configuration for the input device.
  final DomainDevicesInputSource? source;
  /// Indicates the type of input device being configured.
  final String type;

  /// Creates a new [DomainDevicesInput].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [bus] Indicates the bus type for the input device configuration.
  /// [driver] Configures the driver associated with the input device.
  /// [model] Specifies the model type for the input device.
  /// [source] Defines the source configuration for the input device.
  /// [type] Indicates the type of input device being configured.
  DomainDevicesInput({
    this.acpi,
    this.address,
    this.alias,
    this.bus,
    this.driver,
    this.model,
    this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'bus': ?bus,
      'driver': ?driver == null ? null : driver!.toMap(),
      'model': ?model,
      'source': ?source == null ? null : source!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInput(
      acpi: map['acpi'] == null ? null : DomainDevicesInputAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesInputAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      bus: map['bus'] == null ? null : map['bus'] as String,
      driver: map['driver'] == null ? null : DomainDevicesInputDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
      source: map['source'] == null ? null : DomainDevicesInputSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

