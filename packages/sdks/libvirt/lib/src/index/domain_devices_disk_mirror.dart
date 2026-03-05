// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store.dart';
import 'domain_devices_disk_mirror_format.dart';
import 'domain_devices_disk_mirror_source.dart';

class DomainDevicesDiskMirror {
  /// Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStore>? backingStore;
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskMirrorFormat>? format;
  /// Configures the job identifier associated with the disk mirror operation.
  final pulumi.Input<String>? job;
  /// Indicates whether the disk mirror is ready for use.
  final pulumi.Input<String>? ready;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final pulumi.Input<DomainDevicesDiskMirrorSource>? source;

  /// Creates a new [DomainDevicesDiskMirror].
  /// [backingStore] Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  /// [format] Defines the format of the data store used in the backing store source configuration.
  /// [job] Configures the job identifier associated with the disk mirror operation.
  /// [ready] Indicates whether the disk mirror is ready for use.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  DomainDevicesDiskMirror({
    this.backingStore,
    this.format,
    this.job,
    this.ready,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backingStore': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStore, Map<String, dynamic>>(backingStore, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'job': ?job,
      'ready': ?ready,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirror.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirror(
      backingStore: (() { final guardedValue = map['backingStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      job: (() { final guardedValue = map['job']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ready: (() { final guardedValue = map['ready']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

