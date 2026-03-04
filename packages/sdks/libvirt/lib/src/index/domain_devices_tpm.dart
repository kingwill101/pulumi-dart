// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_acpi.dart';
import 'domain_devices_tpm_alias.dart';
import 'domain_devices_tpm_backend.dart';

class DomainDevicesTpm {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesTpmAcpi>? acpi;

  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;

  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesTpmAlias>? alias;

  /// Configures the backend settings for the TPM device, determining its operation mode.
  final pulumi.Input<DomainDevicesTpmBackend>? backend;

  /// Defines the model of the TPM device to be used by the domain.
  final pulumi.Input<String>? model;

  /// Creates a new [DomainDevicesTpm].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Configures the backend settings for the TPM device, determining its operation mode.
  /// [model] Defines the model of the TPM device to be used by the domain.
  DomainDevicesTpm({
    this.acpi,
    this.address,
    this.alias,
    this.backend,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesTpmAcpi,
            Map<String, dynamic>
          >(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesTpmAlias,
            Map<String, dynamic>
          >(alias, (value) => value.toMap()),
      'backend':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesTpmBackend,
            Map<String, dynamic>
          >(backend, (value) => value.toMap()),
      'model': ?model,
    };
  }

  factory DomainDevicesTpm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpm(
      acpi: (() {
        final guardedValue = map['acpi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesTpmAcpi.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesTpmAlias.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backend: (() {
        final guardedValue = map['backend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesTpmBackend.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
