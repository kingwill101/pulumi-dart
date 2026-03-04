// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_data_store_format_metadata_cache.dart';

class DomainDevicesDiskBackingStoreSourceDataStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final pulumi.Input<
    DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache
  >?
  metadataCache;

  /// Specifies the type of the data store format being used in the backing store source.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDataStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskBackingStoreSourceDataStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache,
            Map<String, dynamic>
          >(metadataCache, (value) => value.toMap()),
      'type': type,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDataStoreFormat.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreSourceDataStoreFormat(
      metadataCache: (() {
        final guardedValue = map['metadataCache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
