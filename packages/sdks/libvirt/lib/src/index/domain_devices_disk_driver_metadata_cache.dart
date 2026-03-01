// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_driver_metadata_cache_max_size.dart';

class DomainDevicesDiskDriverMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskDriverMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskDriverMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskDriverMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskDriverMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskDriverMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

