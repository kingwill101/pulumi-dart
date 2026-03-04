// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_acpi.dart';
import 'domain_devices_console_alias.dart';
import 'domain_devices_console_log.dart';
import 'domain_devices_console_protocol.dart';
import 'domain_devices_console_source.dart';
import 'domain_devices_console_target.dart';

class DomainDevicesConsole {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesConsoleAcpi>? acpi;

  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;

  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesConsoleAlias>? alias;

  /// Specifies the logging options for the channel configuration.
  final pulumi.Input<DomainDevicesConsoleLog>? log;

  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesConsoleProtocol>? protocol;

  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesConsoleSource>? source;

  /// Defines the target configuration for the console output.
  final pulumi.Input<DomainDevicesConsoleTarget>? target;

  /// Defines the TTY settings for the console configuration.
  final pulumi.Input<String>? tty;

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
      'acpi':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesConsoleAcpi,
            Map<String, dynamic>
          >(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesConsoleAlias,
            Map<String, dynamic>
          >(alias, (value) => value.toMap()),
      'log':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesConsoleLog,
            Map<String, dynamic>
          >(log, (value) => value.toMap()),
      'protocol':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesConsoleProtocol,
            Map<String, dynamic>
          >(protocol, (value) => value.toMap()),
      'source':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesConsoleSource,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
      'target':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesConsoleTarget,
            Map<String, dynamic>
          >(target, (value) => value.toMap()),
      'tty': ?tty,
    };
  }

  factory DomainDevicesConsole.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsole(
      acpi: (() {
        final guardedValue = map['acpi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesConsoleAcpi.fromMap(
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
          DomainDevicesConsoleAlias.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      log: (() {
        final guardedValue = map['log'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesConsoleLog.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesConsoleProtocol.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesConsoleSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesConsoleTarget.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tty: (() {
        final guardedValue = map['tty'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
