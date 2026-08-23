// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_block_sec_label.dart';

class DomainDevicesDiskBackingStoreSourceBlock {
  /// Sets the device path for the block source of the backing store, defining the physical location of the data.
  final pulumi.Input<String>? dev;
  /// Specifies security label settings for the block source in the backing store, managing access controls.
  final pulumi.Input<List<DomainDevicesDiskBackingStoreSourceBlockSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceBlock].
  /// [dev] Sets the device path for the block source of the backing store, defining the physical location of the data.
  /// [secLabels] Specifies security label settings for the block source in the backing store, managing access controls.
  const DomainDevicesDiskBackingStoreSourceBlock({
    this.dev,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskBackingStoreSourceBlockSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceBlockSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceBlock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceBlock(
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceBlockSecLabel>(guardedValue, (value) => DomainDevicesDiskBackingStoreSourceBlockSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
