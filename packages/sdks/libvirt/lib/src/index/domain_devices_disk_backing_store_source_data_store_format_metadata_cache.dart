// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_data_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize>? maxSize;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize, Map<String, dynamic>>(maxSize, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : (DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

