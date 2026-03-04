// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_data_store_format.dart';

class DomainOsNvRamSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainOsNvRamSourceDataStoreFormat>? format;

  /// Creates a new [DomainOsNvRamSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainOsNvRamSourceDataStore({this.format});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format':
          ?pulumi.Input.mapOptionalInputValue<
            DomainOsNvRamSourceDataStoreFormat,
            Map<String, dynamic>
          >(format, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDataStore(
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainOsNvRamSourceDataStoreFormat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
