// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskBackingStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final pulumi.Input<DomainDevicesDiskBackingStoreFormatMetadataCacheMaxSize?>? maxSize;

  /// Creates a new [DomainDevicesDiskBackingStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  const DomainDevicesDiskBackingStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreFormatMetadataCacheMaxSize, Map<String, dynamic>>(maxSize, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreFormatMetadataCache(
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreFormatMetadataCacheMaxSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
