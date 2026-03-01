// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_slices_slice.dart';

class DomainDevicesDiskMirrorBackingStoreSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final List<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice>? slices;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  DomainDevicesDiskMirrorBackingStoreSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?slices == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice, Map<String, dynamic>>(slices!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceSlices(
      slices: map['slices'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice>(map['slices'], (value) => DomainDevicesDiskMirrorBackingStoreSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

