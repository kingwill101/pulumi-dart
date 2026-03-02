// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_serial_acpi.dart';
import 'domain_devices_serial_alias.dart';
import 'domain_devices_serial_log.dart';
import 'domain_devices_serial_protocol.dart';
import 'domain_devices_serial_source.dart';
import 'domain_devices_serial_target.dart';

class DomainDevicesSerial {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesSerialAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesSerialAlias>? alias;
  /// Specifies the logging options for the channel configuration.
  final pulumi.Input<DomainDevicesSerialLog>? log;
  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesSerialProtocol>? protocol;
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesSerialSource>? source;
  /// Configures the target settings for the serial device, specifying where output is directed.
  final pulumi.Input<DomainDevicesSerialTarget>? target;

  /// Creates a new [DomainDevicesSerial].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] Configures the target settings for the serial device, specifying where output is directed.
  DomainDevicesSerial({
    this.acpi,
    this.address,
    this.alias,
    this.log,
    this.protocol,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'log': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialLog, Map<String, dynamic>>(log, (value) => value.toMap()),
      'protocol': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSerial.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerial(
      acpi: map['acpi'] == null ? null : (DomainDevicesSerialAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesSerialAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      log: map['log'] == null ? null : (DomainDevicesSerialLog.fromMap((map['log']! as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (DomainDevicesSerialProtocol.fromMap((map['protocol']! as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (DomainDevicesSerialSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (DomainDevicesSerialTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

