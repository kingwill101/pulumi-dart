// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_acpi.dart';
import 'domain_devices_disk_alias.dart';
import 'domain_devices_disk_auth.dart';
import 'domain_devices_disk_backend_domain.dart';
import 'domain_devices_disk_backing_store.dart';
import 'domain_devices_disk_block_io.dart';
import 'domain_devices_disk_boot.dart';
import 'domain_devices_disk_driver.dart';
import 'domain_devices_disk_encryption.dart';
import 'domain_devices_disk_geometry.dart';
import 'domain_devices_disk_io_tune.dart';
import 'domain_devices_disk_mirror.dart';
import 'domain_devices_disk_source.dart';
import 'domain_devices_disk_target.dart';
import 'domain_devices_disk_throttle_filters.dart';
import 'domain_devices_disk_transient.dart';

class DomainDevicesDisk {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesDiskAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesDiskAlias>? alias;
  /// Configures authentication settings for the iSCSI source.
  final pulumi.Input<DomainDevicesDiskAuth>? auth;
  /// Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  final pulumi.Input<DomainDevicesDiskBackendDomain>? backendDomain;
  /// Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  final pulumi.Input<DomainDevicesDiskBackingStore>? backingStore;
  /// Configures block I/O settings for the disk.
  final pulumi.Input<DomainDevicesDiskBlockIo>? blockIo;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final pulumi.Input<DomainDevicesDiskBoot>? boot;
  /// Specifies the device identifier for the disk.
  final pulumi.Input<String>? device;
  /// Configures the driver settings for the disk device.
  final pulumi.Input<DomainDevicesDiskDriver>? driver;
  /// Configures encryption settings for the disk, enhancing data security.
  final pulumi.Input<DomainDevicesDiskEncryption>? encryption;
  /// Configures the geometry of the disk, including parameters that define its layout and structure.
  final pulumi.Input<DomainDevicesDiskGeometry>? geometry;
  /// Provides I/O tuning settings for the disk, allowing various performance optimizations based on workload.
  final pulumi.Input<DomainDevicesDiskIoTune>? ioTune;
  /// Configures the disk as a mirror, providing redundancy and improved data integrity through synchronization.
  final pulumi.Input<DomainDevicesDiskMirror>? mirror;
  /// Configures the model type for the disk device in the VM.
  final pulumi.Input<String>? model;
  /// Specifies the product name of the disk device presented to the guest.
  final pulumi.Input<String>? product;
  /// Enables or disables raw I/O operations for the disk device.
  final pulumi.Input<String>? rawIo;
  /// Configures the read-only state for the disk, preventing write operations.
  final pulumi.Input<bool>? readOnly;
  /// Sets the serial number for the disk device, making it identifiable.
  final pulumi.Input<String>? serial;
  /// Configures SGIO (SCSI Generic I/O) for the disk, affecting how I/O requests are processed.
  final pulumi.Input<String>? sgio;
  /// Specifies whether the disk can be shared among multiple guests.
  final pulumi.Input<bool>? shareable;
  /// Indicates whether the disk is a snapshot of another disk image.
  final pulumi.Input<String>? snapshot;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final pulumi.Input<DomainDevicesDiskSource>? source;
  /// Configures the target settings for the disk device.
  final pulumi.Input<DomainDevicesDiskTarget>? target;
  /// Manages the throttle filters applied to the disk device for I/O regulation.
  final pulumi.Input<DomainDevicesDiskThrottleFilters>? throttleFilters;
  /// Controls whether the disk device is defined as a transient resource.
  final pulumi.Input<DomainDevicesDiskTransient>? transient;
  /// Specifies the vendor name associated with the disk device.
  final pulumi.Input<String>? vendor;
  /// Configures the World Wide Name (WWN) for the disk device to uniquely identify it.
  final pulumi.Input<String>? wwn;

  /// Creates a new [DomainDevicesDisk].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [auth] Configures authentication settings for the iSCSI source.
  /// [backendDomain] Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  /// [backingStore] Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  /// [blockIo] Configures block I/O settings for the disk.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [device] Specifies the device identifier for the disk.
  /// [driver] Configures the driver settings for the disk device.
  /// [encryption] Configures encryption settings for the disk, enhancing data security.
  /// [geometry] Configures the geometry of the disk, including parameters that define its layout and structure.
  /// [ioTune] Provides I/O tuning settings for the disk, allowing various performance optimizations based on workload.
  /// [mirror] Configures the disk as a mirror, providing redundancy and improved data integrity through synchronization.
  /// [model] Configures the model type for the disk device in the VM.
  /// [product] Specifies the product name of the disk device presented to the guest.
  /// [rawIo] Enables or disables raw I/O operations for the disk device.
  /// [readOnly] Configures the read-only state for the disk, preventing write operations.
  /// [serial] Sets the serial number for the disk device, making it identifiable.
  /// [sgio] Configures SGIO (SCSI Generic I/O) for the disk, affecting how I/O requests are processed.
  /// [shareable] Specifies whether the disk can be shared among multiple guests.
  /// [snapshot] Indicates whether the disk is a snapshot of another disk image.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  /// [target] Configures the target settings for the disk device.
  /// [throttleFilters] Manages the throttle filters applied to the disk device for I/O regulation.
  /// [transient] Controls whether the disk device is defined as a transient resource.
  /// [vendor] Specifies the vendor name associated with the disk device.
  /// [wwn] Configures the World Wide Name (WWN) for the disk device to uniquely identify it.
  DomainDevicesDisk({
    this.acpi,
    this.address,
    this.alias,
    this.auth,
    this.backendDomain,
    this.backingStore,
    this.blockIo,
    this.boot,
    this.device,
    this.driver,
    this.encryption,
    this.geometry,
    this.ioTune,
    this.mirror,
    this.model,
    this.product,
    this.rawIo,
    this.readOnly,
    this.serial,
    this.sgio,
    this.shareable,
    this.snapshot,
    this.source,
    this.target,
    this.throttleFilters,
    this.transient,
    this.vendor,
    this.wwn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'auth': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'backendDomain': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackendDomain, Map<String, dynamic>>(backendDomain, (value) => value.toMap()),
      'backingStore': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStore, Map<String, dynamic>>(backingStore, (value) => value.toMap()),
      'blockIo': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBlockIo, Map<String, dynamic>>(blockIo, (value) => value.toMap()),
      'boot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBoot, Map<String, dynamic>>(boot, (value) => value.toMap()),
      'device': ?device,
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'geometry': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskGeometry, Map<String, dynamic>>(geometry, (value) => value.toMap()),
      'ioTune': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskIoTune, Map<String, dynamic>>(ioTune, (value) => value.toMap()),
      'mirror': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirror, Map<String, dynamic>>(mirror, (value) => value.toMap()),
      'model': ?model,
      'product': ?product,
      'rawIo': ?rawIo,
      'readOnly': ?readOnly,
      'serial': ?serial,
      'sgio': ?sgio,
      'shareable': ?shareable,
      'snapshot': ?snapshot,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'throttleFilters': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskThrottleFilters, Map<String, dynamic>>(throttleFilters, (value) => value.toMap()),
      'transient': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskTransient, Map<String, dynamic>>(transient, (value) => value.toMap()),
      'vendor': ?vendor,
      'wwn': ?wwn,
    };
  }

  factory DomainDevicesDisk.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDisk(
      acpi: map['acpi'] == null ? null : (DomainDevicesDiskAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesDiskAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      auth: map['auth'] == null ? null : (DomainDevicesDiskAuth.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      backendDomain: map['backendDomain'] == null ? null : (DomainDevicesDiskBackendDomain.fromMap((map['backendDomain']! as Map).cast<String, dynamic>())).input(),
      backingStore: map['backingStore'] == null ? null : (DomainDevicesDiskBackingStore.fromMap((map['backingStore']! as Map).cast<String, dynamic>())).input(),
      blockIo: map['blockIo'] == null ? null : (DomainDevicesDiskBlockIo.fromMap((map['blockIo']! as Map).cast<String, dynamic>())).input(),
      boot: map['boot'] == null ? null : (DomainDevicesDiskBoot.fromMap((map['boot']! as Map).cast<String, dynamic>())).input(),
      device: map['device'] == null ? null : (map['device']! as String).input(),
      driver: map['driver'] == null ? null : (DomainDevicesDiskDriver.fromMap((map['driver']! as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (DomainDevicesDiskEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      geometry: map['geometry'] == null ? null : (DomainDevicesDiskGeometry.fromMap((map['geometry']! as Map).cast<String, dynamic>())).input(),
      ioTune: map['ioTune'] == null ? null : (DomainDevicesDiskIoTune.fromMap((map['ioTune']! as Map).cast<String, dynamic>())).input(),
      mirror: map['mirror'] == null ? null : (DomainDevicesDiskMirror.fromMap((map['mirror']! as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      rawIo: map['rawIo'] == null ? null : (map['rawIo']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      serial: map['serial'] == null ? null : (map['serial']! as String).input(),
      sgio: map['sgio'] == null ? null : (map['sgio']! as String).input(),
      shareable: map['shareable'] == null ? null : (map['shareable']! as bool).input(),
      snapshot: map['snapshot'] == null ? null : (map['snapshot']! as String).input(),
      source: map['source'] == null ? null : (DomainDevicesDiskSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (DomainDevicesDiskTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
      throttleFilters: map['throttleFilters'] == null ? null : (DomainDevicesDiskThrottleFilters.fromMap((map['throttleFilters']! as Map).cast<String, dynamic>())).input(),
      transient: map['transient'] == null ? null : (DomainDevicesDiskTransient.fromMap((map['transient']! as Map).cast<String, dynamic>())).input(),
      vendor: map['vendor'] == null ? null : (map['vendor']! as String).input(),
      wwn: map['wwn'] == null ? null : (map['wwn']! as String).input(),
    );
  }
}

