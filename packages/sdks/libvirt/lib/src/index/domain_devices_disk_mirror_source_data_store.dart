// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_data_store_format.dart';

class DomainDevicesDiskMirrorSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskMirrorSourceDataStoreFormat>? format;

  /// Creates a new [DomainDevicesDiskMirrorSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskMirrorSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceDataStoreFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceDataStore(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceDataStoreFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

