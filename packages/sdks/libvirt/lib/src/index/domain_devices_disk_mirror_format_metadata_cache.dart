// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskMirrorFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskMirrorFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskMirrorFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

