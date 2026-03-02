// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_acpi.dart';
import 'domain_devices_parallel_alias.dart';
import 'domain_devices_parallel_log.dart';
import 'domain_devices_parallel_protocol.dart';
import 'domain_devices_parallel_source.dart';
import 'domain_devices_parallel_target.dart';

class DomainDevicesParallel {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesParallelAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesParallelAlias>? alias;
  /// Specifies the logging options for the channel configuration.
  final pulumi.Input<DomainDevicesParallelLog>? log;
  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesParallelProtocol>? protocol;
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesParallelSource>? source;
  /// Defines the target configuration for the parallel device settings within the domain.
  final pulumi.Input<DomainDevicesParallelTarget>? target;

  /// Creates a new [DomainDevicesParallel].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] Defines the target configuration for the parallel device settings within the domain.
  DomainDevicesParallel({
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
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'log': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelLog, Map<String, dynamic>>(log, (value) => value.toMap()),
      'protocol': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DomainDevicesParallel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallel(
      acpi: map['acpi'] == null ? null : (DomainDevicesParallelAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesParallelAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      log: map['log'] == null ? null : (DomainDevicesParallelLog.fromMap((map['log']! as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (DomainDevicesParallelProtocol.fromMap((map['protocol']! as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (DomainDevicesParallelSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (DomainDevicesParallelTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

