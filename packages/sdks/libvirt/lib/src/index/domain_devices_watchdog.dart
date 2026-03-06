// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_watchdog_acpi.dart';
import 'domain_devices_watchdog_alias.dart';

class DomainDevicesWatchdog {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesWatchdogAcpi>? acpi;
  /// Defines the action that the watchdog device should take when its timeout period expires, such as resetting the virtual machine or performing a graceful shutdown.
  final pulumi.Input<String>? action;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesWatchdogAlias>? alias;
  /// Configures the model of the watchdog device, which dictates its underlying functionality and behavior in the domain.
  final pulumi.Input<String> model;

  /// Creates a new [DomainDevicesWatchdog].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [action] Defines the action that the watchdog device should take when its timeout period expires, such as resetting the virtual machine or performing a graceful shutdown.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [model] Configures the model of the watchdog device, which dictates its underlying functionality and behavior in the domain.
  const DomainDevicesWatchdog({
    this.acpi,
    this.action,
    this.address,
    this.alias,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesWatchdogAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'action': ?action,
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesWatchdogAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'model': model,
    };
  }

  factory DomainDevicesWatchdog.fromMap(Map<String, dynamic> map) {
    return DomainDevicesWatchdog(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesWatchdogAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesWatchdogAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: pulumi.Input.fromValue(map['model'] as String),
    );
  }
}

