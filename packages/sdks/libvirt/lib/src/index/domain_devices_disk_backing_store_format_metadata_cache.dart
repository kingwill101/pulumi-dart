// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskBackingStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskBackingStoreFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskBackingStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskBackingStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskBackingStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskBackingStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

