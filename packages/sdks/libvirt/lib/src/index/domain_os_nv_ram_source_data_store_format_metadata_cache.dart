// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_data_store_format_metadata_cache_max_size.dart';

class DomainOsNvRamSourceDataStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainOsNvRamSourceDataStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainOsNvRamSourceDataStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainOsNvRamSourceDataStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDataStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

