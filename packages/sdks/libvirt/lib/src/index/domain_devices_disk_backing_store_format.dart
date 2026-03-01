// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_format_metadata_cache.dart';

class DomainDevicesDiskBackingStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskBackingStoreFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainDevicesDiskBackingStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskBackingStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesDiskBackingStoreFormat.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskBackingStoreFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

