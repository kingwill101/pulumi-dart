// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_block_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceBlock {
  /// Sets the device path for the block source of the backing store, defining the physical location of the data.
  final pulumi.Input<String>? dev;
  /// Specifies security label settings for the block source in the backing store, managing access controls.
  final pulumi.Input<List<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceBlock].
  /// [dev] Sets the device path for the block source of the backing store, defining the physical location of the data.
  /// [secLabels] Specifies security label settings for the block source in the backing store, managing access controls.
  const DomainDevicesDiskMirrorBackingStoreSourceBlock({
    this.dev,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceBlock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceBlock(
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

