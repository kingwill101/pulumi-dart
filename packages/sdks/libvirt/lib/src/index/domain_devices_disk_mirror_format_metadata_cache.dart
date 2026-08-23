// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final pulumi.Input<DomainDevicesDiskMirrorFormatMetadataCacheMaxSize>? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  const DomainDevicesDiskMirrorFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorFormatMetadataCacheMaxSize, Map<String, dynamic>>(maxSize, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorFormatMetadataCache(
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorFormatMetadataCacheMaxSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
