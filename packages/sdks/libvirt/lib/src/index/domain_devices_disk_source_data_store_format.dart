// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_data_store_format_metadata_cache.dart';

class DomainDevicesDiskSourceDataStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskSourceDataStoreFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainDevicesDiskSourceDataStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskSourceDataStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesDiskSourceDataStoreFormat.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceDataStoreFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskSourceDataStoreFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

