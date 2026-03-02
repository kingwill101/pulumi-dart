// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_acpi.dart';
import 'domain_devices_rng_alias.dart';
import 'domain_devices_rng_backend.dart';
import 'domain_devices_rng_driver.dart';
import 'domain_devices_rng_rate.dart';

class DomainDevicesRng {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesRngAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesRngAlias>? alias;
  /// Configures the backend settings for the random number generator device.
  final pulumi.Input<DomainDevicesRngBackend>? backend;
  /// Specifies the driver settings for the random number generator device.
  final pulumi.Input<DomainDevicesRngDriver>? driver;
  /// Sets the model type for the random number generator device.
  final pulumi.Input<String> model;
  /// Configures the rate of data provided by the random number generator device.
  final pulumi.Input<DomainDevicesRngRate>? rate;

  /// Creates a new [DomainDevicesRng].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Configures the backend settings for the random number generator device.
  /// [driver] Specifies the driver settings for the random number generator device.
  /// [model] Sets the model type for the random number generator device.
  /// [rate] Configures the rate of data provided by the random number generator device.
  DomainDevicesRng({
    this.acpi,
    this.address,
    this.alias,
    this.backend,
    this.driver,
    required this.model,
    this.rate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'backend': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackend, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'model': model,
      'rate': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngRate, Map<String, dynamic>>(rate, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRng.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRng(
      acpi: map['acpi'] == null ? null : (DomainDevicesRngAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesRngAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      backend: map['backend'] == null ? null : (DomainDevicesRngBackend.fromMap((map['backend']! as Map).cast<String, dynamic>())).input(),
      driver: map['driver'] == null ? null : (DomainDevicesRngDriver.fromMap((map['driver']! as Map).cast<String, dynamic>())).input(),
      model: (map['model'] as String).input(),
      rate: map['rate'] == null ? null : (DomainDevicesRngRate.fromMap((map['rate']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

