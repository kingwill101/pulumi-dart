// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_smartcard_acpi.dart';
import 'domain_devices_smartcard_alias.dart';
import 'domain_devices_smartcard_host_cert.dart';
import 'domain_devices_smartcard_passthrough.dart';
import 'domain_devices_smartcard_protocol.dart';

class DomainDevicesSmartcard {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesSmartcardAcpi?>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>?>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesSmartcardAlias?>? alias;
  /// Specifies the file path to the database to be used by the smartcard.
  final pulumi.Input<String?>? database;
  /// Configures the host reference for the smartcard device.
  final pulumi.Input<bool?>? host;
  /// Defines the path to the host certificates used for the smartcard.
  final pulumi.Input<List<DomainDevicesSmartcardHostCert>?>? hostCerts;
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesSmartcardPassthrough?>? passthrough;
  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesSmartcardProtocol?>? protocol;

  /// Creates a new [DomainDevicesSmartcard].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [database] Specifies the file path to the database to be used by the smartcard.
  /// [host] Configures the host reference for the smartcard device.
  /// [hostCerts] Defines the path to the host certificates used for the smartcard.
  /// [passthrough] Defines the source settings for the EGD backend.
  /// [protocol] Sets the protocol type for the EGD backend.
  const DomainDevicesSmartcard({
    this.acpi,
    this.address,
    this.alias,
    this.database,
    this.host,
    this.hostCerts,
    this.passthrough,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSmartcardAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSmartcardAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'database': ?database,
      'host': ?host,
      'hostCerts': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesSmartcardHostCert>, List<Map<String, dynamic>>>(hostCerts, (value) => pulumi.Input.encodeList<DomainDevicesSmartcardHostCert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'passthrough': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSmartcardPassthrough, Map<String, dynamic>>(passthrough, (value) => value.toMap()),
      'protocol': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSmartcardProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSmartcard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcard(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSmartcardAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSmartcardAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostCerts: (() { final guardedValue = map['hostCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesSmartcardHostCert>(guardedValue, (value) => DomainDevicesSmartcardHostCert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      passthrough: (() { final guardedValue = map['passthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSmartcardPassthrough.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSmartcardProtocol.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
