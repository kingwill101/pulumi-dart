// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_acpi.dart';
import 'domain_devices_redir_dev_alias.dart';
import 'domain_devices_redir_dev_boot.dart';
import 'domain_devices_redir_dev_protocol.dart';
import 'domain_devices_redir_dev_source.dart';

class DomainDevicesRedirDev {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesRedirDevAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesRedirDevAlias>? alias;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final pulumi.Input<DomainDevicesRedirDevBoot>? boot;
  /// Defines the bus type for the redirected device, determining how it interacts with the guest's bus architecture.
  final pulumi.Input<String>? bus;
  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevProtocol>? protocol;
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSource>? source;

  /// Creates a new [DomainDevicesRedirDev].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [bus] Defines the bus type for the redirected device, determining how it interacts with the guest's bus architecture.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  DomainDevicesRedirDev({
    this.acpi,
    this.address,
    this.alias,
    this.boot,
    this.bus,
    this.protocol,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'boot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevBoot, Map<String, dynamic>>(boot, (value) => value.toMap()),
      'bus': ?bus,
      'protocol': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRedirDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDev(
      acpi: map['acpi'] == null ? null : (DomainDevicesRedirDevAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address'] as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesRedirDevAlias.fromMap((map['alias'] as Map).cast<String, dynamic>())).input(),
      boot: map['boot'] == null ? null : (DomainDevicesRedirDevBoot.fromMap((map['boot'] as Map).cast<String, dynamic>())).input(),
      bus: map['bus'] == null ? null : (map['bus'] as String).input(),
      protocol: map['protocol'] == null ? null : (DomainDevicesRedirDevProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (DomainDevicesRedirDevSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

