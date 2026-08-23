// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_panic_acpi.dart';
import 'domain_devices_panic_alias.dart';

class DomainDevicesPanic {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesPanicAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesPanicAlias>? alias;
  /// Sets the model type for the panic device configuration.
  final pulumi.Input<String>? model;

  /// Creates a new [DomainDevicesPanic].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [model] Sets the model type for the panic device configuration.
  const DomainDevicesPanic({
    this.acpi,
    this.address,
    this.alias,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesPanicAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesPanicAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'model': ?model,
    };
  }

  factory DomainDevicesPanic.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPanic(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesPanicAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesPanicAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
