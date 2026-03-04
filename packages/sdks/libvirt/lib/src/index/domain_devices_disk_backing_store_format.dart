// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_format_metadata_cache.dart';

class DomainDevicesDiskBackingStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final pulumi.Input<DomainDevicesDiskBackingStoreFormatMetadataCache>?
  metadataCache;

  /// Specifies the type of the data store format being used in the backing store source.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesDiskBackingStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskBackingStoreFormat({this.metadataCache, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskBackingStoreFormatMetadataCache,
            Map<String, dynamic>
          >(metadataCache, (value) => value.toMap()),
      'type': type,
    };
  }

  factory DomainDevicesDiskBackingStoreFormat.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreFormat(
      metadataCache: (() {
        final guardedValue = map['metadataCache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskBackingStoreFormatMetadataCache.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
