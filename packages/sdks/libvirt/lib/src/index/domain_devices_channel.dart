// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_channel_acpi.dart';
import 'domain_devices_channel_alias.dart';
import 'domain_devices_channel_log.dart';
import 'domain_devices_channel_protocol.dart';
import 'domain_devices_channel_source.dart';
import 'domain_devices_channel_target.dart';

class DomainDevicesChannel {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesChannelAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesChannelAlias>? alias;
  /// Specifies the logging options for the channel configuration.
  final pulumi.Input<DomainDevicesChannelLog>? log;
  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesChannelProtocol>? protocol;
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesChannelSource>? source;
  /// This field defines the target configuration for the virtual channel.
  final pulumi.Input<DomainDevicesChannelTarget>? target;

  /// Creates a new [DomainDevicesChannel].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] This field defines the target configuration for the virtual channel.
  DomainDevicesChannel({
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
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'log': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelLog, Map<String, dynamic>>(log, (value) => value.toMap()),
      'protocol': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DomainDevicesChannel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannel(
      acpi: map['acpi'] == null ? null : (DomainDevicesChannelAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesChannelAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      log: map['log'] == null ? null : (DomainDevicesChannelLog.fromMap((map['log']! as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (DomainDevicesChannelProtocol.fromMap((map['protocol']! as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (DomainDevicesChannelSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (DomainDevicesChannelTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

