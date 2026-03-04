// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_data_store_format.dart';

class DomainDevicesDiskMirrorBackingStoreSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat>?
  format;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskMirrorBackingStoreSourceDataStore({this.format});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat,
            Map<String, dynamic>
          >(format, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceDataStore.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorBackingStoreSourceDataStore(
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
