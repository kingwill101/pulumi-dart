// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_format.dart';
import 'domain_devices_disk_mirror_backing_store_source.dart';

class DomainDevicesDiskMirrorBackingStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskMirrorBackingStoreFormat? format;
  /// Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  final double? index;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final DomainDevicesDiskMirrorBackingStoreSource? source;

  /// Creates a new [DomainDevicesDiskMirrorBackingStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  /// [index] Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  DomainDevicesDiskMirrorBackingStore({
    this.format,
    this.index,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
      'index': ?index,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStore(
      format: map['format'] == null ? null : DomainDevicesDiskMirrorBackingStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      index: map['index'] == null ? null : map['index'] as double,
      source: map['source'] == null ? null : DomainDevicesDiskMirrorBackingStoreSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

