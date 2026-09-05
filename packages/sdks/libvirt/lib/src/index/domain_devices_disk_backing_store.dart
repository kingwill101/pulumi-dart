// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_format.dart';
import 'domain_devices_disk_backing_store_source.dart';

class DomainDevicesDiskBackingStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskBackingStoreFormat?>? format;
  /// Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  final pulumi.Input<double?>? index;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final pulumi.Input<DomainDevicesDiskBackingStoreSource?>? source;

  /// Creates a new [DomainDevicesDiskBackingStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  /// [index] Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  const DomainDevicesDiskBackingStore({
    this.format,
    this.index,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'index': ?index,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStore(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
