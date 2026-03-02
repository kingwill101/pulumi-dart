// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_input_acpi.dart';
import 'domain_devices_input_alias.dart';
import 'domain_devices_input_driver.dart';
import 'domain_devices_input_source.dart';

class DomainDevicesInput {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesInputAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesInputAlias>? alias;
  /// Indicates the bus type for the input device configuration.
  final pulumi.Input<String>? bus;
  /// Configures the driver associated with the input device.
  final pulumi.Input<DomainDevicesInputDriver>? driver;
  /// Specifies the model type for the input device.
  final pulumi.Input<String>? model;
  /// Defines the source configuration for the input device.
  final pulumi.Input<DomainDevicesInputSource>? source;
  /// Indicates the type of input device being configured.
  final pulumi.Input<String> type;

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
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInputAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInputAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'bus': ?bus,
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInputDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'model': ?model,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInputSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'type': type,
    };
  }

  factory DomainDevicesInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInput(
      acpi: map['acpi'] == null ? null : (DomainDevicesInputAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesInputAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      bus: map['bus'] == null ? null : (map['bus']! as String).input(),
      driver: map['driver'] == null ? null : (DomainDevicesInputDriver.fromMap((map['driver']! as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      source: map['source'] == null ? null : (DomainDevicesInputSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

