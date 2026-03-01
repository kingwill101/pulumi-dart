// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_source_data_store_format_metadata_cache.dart';

class DomainDevicesDiskMirrorSourceDataStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainDevicesDiskMirrorSourceDataStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskMirrorSourceDataStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesDiskMirrorSourceDataStoreFormat.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceDataStoreFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

