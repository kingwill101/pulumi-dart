// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_data_store_format.dart';

class DomainDevicesDiskSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskSourceDataStoreFormat>? format;

  /// Creates a new [DomainDevicesDiskSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  const DomainDevicesDiskSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceDataStoreFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceDataStore(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskSourceDataStoreFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

