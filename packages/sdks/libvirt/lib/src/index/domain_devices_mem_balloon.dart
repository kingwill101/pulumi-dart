// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_mem_balloon_acpi.dart';
import 'domain_devices_mem_balloon_alias.dart';
import 'domain_devices_mem_balloon_driver.dart';
import 'domain_devices_mem_balloon_stats.dart';

class DomainDevicesMemBalloon {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesMemBalloonAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesMemBalloonAlias>? alias;
  /// Configures automatic deflation of the memory balloon device when memory is freed.
  final pulumi.Input<String>? autoDeflate;
  /// Specifies the driver configuration used for the memory balloon device, determining its operational parameters.
  final pulumi.Input<DomainDevicesMemBalloonDriver>? driver;
  /// Enables reporting of free pages by the memory balloon device, assisting with memory management.
  final pulumi.Input<String>? freePageReporting;
  /// Sets the model for the memory balloon device, determining its specific implementation details.
  final pulumi.Input<String> model;
  /// Configures statistics collection for the memory balloon device, enabling performance monitoring.
  final pulumi.Input<DomainDevicesMemBalloonStats>? stats;

  /// Creates a new [DomainDevicesMemBalloon].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [autoDeflate] Configures automatic deflation of the memory balloon device when memory is freed.
  /// [driver] Specifies the driver configuration used for the memory balloon device, determining its operational parameters.
  /// [freePageReporting] Enables reporting of free pages by the memory balloon device, assisting with memory management.
  /// [model] Sets the model for the memory balloon device, determining its specific implementation details.
  /// [stats] Configures statistics collection for the memory balloon device, enabling performance monitoring.
  DomainDevicesMemBalloon({
    this.acpi,
    this.address,
    this.alias,
    this.autoDeflate,
    this.driver,
    this.freePageReporting,
    required this.model,
    this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemBalloonAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemBalloonAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'autoDeflate': ?autoDeflate,
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemBalloonDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'freePageReporting': ?freePageReporting,
      'model': model,
      'stats': ?pulumi.Input.mapOptionalInputValue<DomainDevicesMemBalloonStats, Map<String, dynamic>>(stats, (value) => value.toMap()),
    };
  }

  factory DomainDevicesMemBalloon.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemBalloon(
      acpi: map['acpi'] == null ? null : (DomainDevicesMemBalloonAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address'] as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesMemBalloonAlias.fromMap((map['alias'] as Map).cast<String, dynamic>())).input(),
      autoDeflate: map['autoDeflate'] == null ? null : (map['autoDeflate'] as String).input(),
      driver: map['driver'] == null ? null : (DomainDevicesMemBalloonDriver.fromMap((map['driver'] as Map).cast<String, dynamic>())).input(),
      freePageReporting: map['freePageReporting'] == null ? null : (map['freePageReporting'] as String).input(),
      model: (map['model'] as String).input(),
      stats: map['stats'] == null ? null : (DomainDevicesMemBalloonStats.fromMap((map['stats'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

