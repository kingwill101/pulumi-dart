// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_slices_slice.dart';

class DomainOsNvRamSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final pulumi.Input<List<DomainOsNvRamSourceSlicesSlice>>? slices;

  /// Creates a new [DomainOsNvRamSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  const DomainOsNvRamSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?pulumi.Input.mapOptionalInputValue<List<DomainOsNvRamSourceSlicesSlice>, List<Map<String, dynamic>>>(slices, (value) => pulumi.Input.encodeList<DomainOsNvRamSourceSlicesSlice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsNvRamSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceSlices(
      slices: (() { final guardedValue = map['slices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainOsNvRamSourceSlicesSlice>(guardedValue, (value) => DomainOsNvRamSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
