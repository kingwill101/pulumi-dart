// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_filesystem_acpi.dart';
import 'domain_devices_filesystem_alias.dart';
import 'domain_devices_filesystem_binary.dart';
import 'domain_devices_filesystem_boot.dart';
import 'domain_devices_filesystem_driver.dart';
import 'domain_devices_filesystem_id_map.dart';
import 'domain_devices_filesystem_source.dart';
import 'domain_devices_filesystem_target.dart';

class DomainDevicesFilesystem {
  /// Sets the access mode for filesystem devices, controlling permissions.
  final pulumi.Input<String>? accessMode;
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesFilesystemAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesFilesystemAlias>? alias;
  /// Configures binary options for the filesystem device, including cache settings.
  final pulumi.Input<DomainDevicesFilesystemBinary>? binary;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final pulumi.Input<DomainDevicesFilesystemBoot>? boot;
  /// Configures the directory mode for the filesystem.
  final pulumi.Input<String>? dmode;
  /// Specifies the driver used for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemDriver>? driver;
  /// Configures the file mode for the filesystem.
  final pulumi.Input<String>? fmode;
  /// Sets up ID mapping for the filesystem to control access permissions.
  final pulumi.Input<DomainDevicesFilesystemIdMap>? idMap;
  /// Sets the emulated model for the filesystem.
  final pulumi.Input<String>? model;
  /// Configures whether multiple devices can be attached to the filesystem.
  final pulumi.Input<String>? multiDevs;
  /// Specifies if the filesystem is read-only.
  final pulumi.Input<bool>? readOnly;
  /// Defines the source for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSource>? source;
  /// Configures the hard limit on the space allocated for the filesystem.
  final pulumi.Input<double>? spaceHardLimit;
  /// Sets the unit of measure for the hard limit space allocation for the filesystem.
  final pulumi.Input<String>? spaceHardLimitUnit;
  /// Configures the soft limit on the space allocated for the filesystem.
  final pulumi.Input<double>? spaceSoftLimit;
  /// Sets the unit of measure for the soft limit space allocation for the filesystem.
  final pulumi.Input<String>? spaceSoftLimitUnit;
  /// Specifies the target element defining where the filesystem is mounted in the guest.
  final pulumi.Input<DomainDevicesFilesystemTarget>? target;

  /// Creates a new [DomainDevicesFilesystem].
  /// [accessMode] Sets the access mode for filesystem devices, controlling permissions.
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [binary] Configures binary options for the filesystem device, including cache settings.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [dmode] Configures the directory mode for the filesystem.
  /// [driver] Specifies the driver used for the filesystem.
  /// [fmode] Configures the file mode for the filesystem.
  /// [idMap] Sets up ID mapping for the filesystem to control access permissions.
  /// [model] Sets the emulated model for the filesystem.
  /// [multiDevs] Configures whether multiple devices can be attached to the filesystem.
  /// [readOnly] Specifies if the filesystem is read-only.
  /// [source] Defines the source for the filesystem.
  /// [spaceHardLimit] Configures the hard limit on the space allocated for the filesystem.
  /// [spaceHardLimitUnit] Sets the unit of measure for the hard limit space allocation for the filesystem.
  /// [spaceSoftLimit] Configures the soft limit on the space allocated for the filesystem.
  /// [spaceSoftLimitUnit] Sets the unit of measure for the soft limit space allocation for the filesystem.
  /// [target] Specifies the target element defining where the filesystem is mounted in the guest.
  DomainDevicesFilesystem({
    this.accessMode,
    this.acpi,
    this.address,
    this.alias,
    this.binary,
    this.boot,
    this.dmode,
    this.driver,
    this.fmode,
    this.idMap,
    this.model,
    this.multiDevs,
    this.readOnly,
    this.source,
    this.spaceHardLimit,
    this.spaceHardLimitUnit,
    this.spaceSoftLimit,
    this.spaceSoftLimitUnit,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'binary': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBinary, Map<String, dynamic>>(binary, (value) => value.toMap()),
      'boot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBoot, Map<String, dynamic>>(boot, (value) => value.toMap()),
      'dmode': ?dmode,
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'fmode': ?fmode,
      'idMap': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemIdMap, Map<String, dynamic>>(idMap, (value) => value.toMap()),
      'model': ?model,
      'multiDevs': ?multiDevs,
      'readOnly': ?readOnly,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'spaceHardLimit': ?spaceHardLimit,
      'spaceHardLimitUnit': ?spaceHardLimitUnit,
      'spaceSoftLimit': ?spaceSoftLimit,
      'spaceSoftLimitUnit': ?spaceSoftLimitUnit,
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DomainDevicesFilesystem.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystem(
      accessMode: map['accessMode'] == null ? null : (map['accessMode']! as String).input(),
      acpi: map['acpi'] == null ? null : (DomainDevicesFilesystemAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesFilesystemAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      binary: map['binary'] == null ? null : (DomainDevicesFilesystemBinary.fromMap((map['binary']! as Map).cast<String, dynamic>())).input(),
      boot: map['boot'] == null ? null : (DomainDevicesFilesystemBoot.fromMap((map['boot']! as Map).cast<String, dynamic>())).input(),
      dmode: map['dmode'] == null ? null : (map['dmode']! as String).input(),
      driver: map['driver'] == null ? null : (DomainDevicesFilesystemDriver.fromMap((map['driver']! as Map).cast<String, dynamic>())).input(),
      fmode: map['fmode'] == null ? null : (map['fmode']! as String).input(),
      idMap: map['idMap'] == null ? null : (DomainDevicesFilesystemIdMap.fromMap((map['idMap']! as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      multiDevs: map['multiDevs'] == null ? null : (map['multiDevs']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      source: map['source'] == null ? null : (DomainDevicesFilesystemSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      spaceHardLimit: map['spaceHardLimit'] == null ? null : (map['spaceHardLimit']! as double).input(),
      spaceHardLimitUnit: map['spaceHardLimitUnit'] == null ? null : (map['spaceHardLimitUnit']! as String).input(),
      spaceSoftLimit: map['spaceSoftLimit'] == null ? null : (map['spaceSoftLimit']! as double).input(),
      spaceSoftLimitUnit: map['spaceSoftLimitUnit'] == null ? null : (map['spaceSoftLimitUnit']! as String).input(),
      target: map['target'] == null ? null : (DomainDevicesFilesystemTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

