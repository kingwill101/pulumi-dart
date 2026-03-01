// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_source_data_store_format.dart';

class DomainDevicesDiskMirrorSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskMirrorSourceDataStoreFormat? format;

  /// Creates a new [DomainDevicesDiskMirrorSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskMirrorSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceDataStore(
      format: map['format'] == null ? null : DomainDevicesDiskMirrorSourceDataStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
    );
  }
}

