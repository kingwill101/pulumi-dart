// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_data_store_format.dart';

class DomainDevicesDiskSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskSourceDataStoreFormat? format;

  /// Creates a new [DomainDevicesDiskSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
    };
  }

  factory DomainDevicesDiskSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceDataStore(
      format: map['format'] == null ? null : DomainDevicesDiskSourceDataStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
    );
  }
}

