// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_vsock_acpi.dart';
import 'domain_devices_vsock_alias.dart';
import 'domain_devices_vsock_cid.dart';
import 'domain_devices_vsock_driver.dart';

class DomainDevicesVsock {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesVsockAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesVsockAlias>? alias;
  /// Configures the connection identifier (CID) for the vsock device.
  final pulumi.Input<DomainDevicesVsockCid>? cid;
  /// Configures driver options for the vsock device.
  final pulumi.Input<DomainDevicesVsockDriver>? driver;
  /// Defines the model of the vsock device for the domain.
  final pulumi.Input<String>? model;

  /// Creates a new [DomainDevicesVsock].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [cid] Configures the connection identifier (CID) for the vsock device.
  /// [driver] Configures driver options for the vsock device.
  /// [model] Defines the model of the vsock device for the domain.
  DomainDevicesVsock({
    this.acpi,
    this.address,
    this.alias,
    this.cid,
    this.driver,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVsockAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVsockAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'cid': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVsockCid, Map<String, dynamic>>(cid, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVsockDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'model': ?model,
    };
  }

  factory DomainDevicesVsock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsock(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVsockAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVsockAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cid: (() { final guardedValue = map['cid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVsockCid.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVsockDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

