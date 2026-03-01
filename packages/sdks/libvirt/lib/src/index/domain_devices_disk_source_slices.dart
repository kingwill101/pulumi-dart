// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_slices_slice.dart';

class DomainDevicesDiskSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final List<DomainDevicesDiskSourceSlicesSlice>? slices;

  /// Creates a new [DomainDevicesDiskSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  DomainDevicesDiskSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?slices == null ? null : pulumi.Input.encodeList<DomainDevicesDiskSourceSlicesSlice, Map<String, dynamic>>(slices!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceSlices(
      slices: map['slices'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskSourceSlicesSlice>(map['slices'], (value) => DomainDevicesDiskSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

