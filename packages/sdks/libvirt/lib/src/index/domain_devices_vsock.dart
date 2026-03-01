// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_vsock_acpi.dart';
import 'domain_devices_vsock_alias.dart';
import 'domain_devices_vsock_cid.dart';
import 'domain_devices_vsock_driver.dart';

class DomainDevicesVsock {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesVsockAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesVsockAlias? alias;
  /// Configures the connection identifier (CID) for the vsock device.
  final DomainDevicesVsockCid? cid;
  /// Configures driver options for the vsock device.
  final DomainDevicesVsockDriver? driver;
  /// Defines the model of the vsock device for the domain.
  final String? model;

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
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'cid': ?cid == null ? null : cid!.toMap(),
      'driver': ?driver == null ? null : driver!.toMap(),
      'model': ?model,
    };
  }

  factory DomainDevicesVsock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsock(
      acpi: map['acpi'] == null ? null : DomainDevicesVsockAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesVsockAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      cid: map['cid'] == null ? null : DomainDevicesVsockCid.fromMap((map['cid'] as Map).cast<String, dynamic>()),
      driver: map['driver'] == null ? null : DomainDevicesVsockDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
    );
  }
}

