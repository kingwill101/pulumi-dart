// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_slices_slice.dart';

class DomainDevicesDiskMirrorBackingStoreSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final pulumi.Input<List<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice>>? slices;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  const DomainDevicesDiskMirrorBackingStoreSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice>, List<Map<String, dynamic>>>(slices, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceSlices(
      slices: (() { final guardedValue = map['slices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice>(guardedValue, (value) => DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

