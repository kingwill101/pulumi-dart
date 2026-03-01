// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_data_store_format_metadata_cache.dart';

class DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

