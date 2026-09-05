// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorBackingStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize?>? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  const DomainDevicesDiskMirrorBackingStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize, Map<String, dynamic>>(maxSize, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreFormatMetadataCache(
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
