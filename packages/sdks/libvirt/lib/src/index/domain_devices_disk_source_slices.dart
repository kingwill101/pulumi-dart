// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_slices_slice.dart';

class DomainDevicesDiskSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final pulumi.Input<List<DomainDevicesDiskSourceSlicesSlice>>? slices;

  /// Creates a new [DomainDevicesDiskSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  DomainDevicesDiskSourceSlices({this.slices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesDiskSourceSlicesSlice>,
            List<Map<String, dynamic>>
          >(
            slices,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesDiskSourceSlicesSlice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesDiskSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceSlices(
      slices: (() {
        final guardedValue = map['slices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainDevicesDiskSourceSlicesSlice>(
            guardedValue,
            (value) => DomainDevicesDiskSourceSlicesSlice.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
