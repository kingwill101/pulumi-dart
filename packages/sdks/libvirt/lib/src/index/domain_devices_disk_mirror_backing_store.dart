// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_format.dart';
import 'domain_devices_disk_mirror_backing_store_source.dart';

class DomainDevicesDiskMirrorBackingStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreFormat?>? format;
  /// Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  final pulumi.Input<double?>? index;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSource?>? source;

  /// Creates a new [DomainDevicesDiskMirrorBackingStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  /// [index] Sets the index for the backing store in relation to other backing stores, managing their order and priority.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  const DomainDevicesDiskMirrorBackingStore({
    this.format,
    this.index,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'index': ?index,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStore(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStoreFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStoreSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
