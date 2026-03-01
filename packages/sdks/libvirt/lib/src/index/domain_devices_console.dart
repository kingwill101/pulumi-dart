// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_console_acpi.dart';
import 'domain_devices_console_alias.dart';
import 'domain_devices_console_log.dart';
import 'domain_devices_console_protocol.dart';
import 'domain_devices_console_source.dart';
import 'domain_devices_console_target.dart';

class DomainDevicesConsole {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesConsoleAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesConsoleAlias? alias;
  /// Specifies the logging options for the channel configuration.
  final DomainDevicesConsoleLog? log;
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesConsoleProtocol? protocol;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesConsoleSource? source;
  /// Defines the target configuration for the console output.
  final DomainDevicesConsoleTarget? target;
  /// Defines the TTY settings for the console configuration.
  final String? tty;

  /// Creates a new [DomainDevicesConsole].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] Defines the target configuration for the console output.
  /// [tty] Defines the TTY settings for the console configuration.
  DomainDevicesConsole({
    this.acpi,
    this.address,
    this.alias,
    this.log,
    this.protocol,
    this.source,
    this.target,
    this.tty,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'log': ?log == null ? null : log!.toMap(),
      'protocol': ?protocol == null ? null : protocol!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
      'tty': ?tty,
    };
  }

  factory DomainDevicesConsole.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsole(
      acpi: map['acpi'] == null ? null : DomainDevicesConsoleAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesConsoleAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      log: map['log'] == null ? null : DomainDevicesConsoleLog.fromMap((map['log'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : DomainDevicesConsoleProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesConsoleSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesConsoleTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
      tty: map['tty'] == null ? null : map['tty'] as String,
    );
  }
}

