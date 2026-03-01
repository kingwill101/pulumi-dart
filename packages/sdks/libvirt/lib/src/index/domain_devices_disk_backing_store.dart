// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_format.dart';
import 'domain_devices_disk_backing_store_source.dart';

class DomainDevicesDiskBackingStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskBackingStoreFormat? format;
  /// Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  final double? index;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final DomainDevicesDiskBackingStoreSource? source;

  /// Creates a new [DomainDevicesDiskBackingStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  /// [index] Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  DomainDevicesDiskBackingStore({
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

  factory DomainDevicesDiskBackingStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStore(
      format: map['format'] == null ? null : DomainDevicesDiskBackingStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      index: map['index'] == null ? null : map['index'] as double,
      source: map['source'] == null ? null : DomainDevicesDiskBackingStoreSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

