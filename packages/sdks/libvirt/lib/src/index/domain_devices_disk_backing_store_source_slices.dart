// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_slices_slice.dart';

class DomainDevicesDiskBackingStoreSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final List<DomainDevicesDiskBackingStoreSourceSlicesSlice>? slices;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  DomainDevicesDiskBackingStoreSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?slices == null ? null : pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceSlicesSlice, Map<String, dynamic>>(slices!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceSlices(
      slices: map['slices'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceSlicesSlice>(map['slices'], (value) => DomainDevicesDiskBackingStoreSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

