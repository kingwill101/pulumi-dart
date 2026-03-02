// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_data_store_format.dart';

class DomainDevicesDiskBackingStoreSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceDataStoreFormat>? format;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskBackingStoreSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceDataStoreFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDataStore(
      format: map['format'] == null ? null : (DomainDevicesDiskBackingStoreSourceDataStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

