// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_data_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final pulumi.Input<DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCacheMaxSize?>? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  const DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCacheMaxSize, Map<String, dynamic>>(maxSize, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache(
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCacheMaxSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
