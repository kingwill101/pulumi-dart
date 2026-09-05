// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shareable_capacity_status_patch.dart';

/// ShareableSummaryStatus reports aggregate capacity for a pool that contains devices with AllowMultipleAllocations.
class ShareableSummaryStatusPatch {
  /// Capacity reports aggregate total, consumed, and available amounts per shareable capacity key across the pool.
  final pulumi.Input<List<ShareableCapacityStatusPatch>?>? capacity;
  /// FullyAvailableDevices is the number of shareable devices with no capacity consumed.
  final pulumi.Input<int?>? fullyAvailableDevices;
  /// PartiallyAvailableDevices is the number of shareable devices with some but not all capacity consumed.
  final pulumi.Input<int?>? partiallyAvailableDevices;

  /// Creates a new [ShareableSummaryStatusPatch].
  /// [capacity] Capacity reports aggregate total, consumed, and available amounts per shareable capacity key across the pool.
  /// [fullyAvailableDevices] FullyAvailableDevices is the number of shareable devices with no capacity consumed.
  /// [partiallyAvailableDevices] PartiallyAvailableDevices is the number of shareable devices with some but not all capacity consumed.
  const ShareableSummaryStatusPatch({
    this.capacity,
    this.fullyAvailableDevices,
    this.partiallyAvailableDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<List<ShareableCapacityStatusPatch>, List<Map<String, dynamic>>>(capacity, (value) => pulumi.Input.encodeList<ShareableCapacityStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyAvailableDevices': ?fullyAvailableDevices,
      'partiallyAvailableDevices': ?partiallyAvailableDevices,
    };
  }

  factory ShareableSummaryStatusPatch.fromMap(Map<String, dynamic> map) {
    return ShareableSummaryStatusPatch(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareableCapacityStatusPatch>(guardedValue, (value) => ShareableCapacityStatusPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fullyAvailableDevices: (() { final guardedValue = map['fullyAvailableDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      partiallyAvailableDevices: (() { final guardedValue = map['partiallyAvailableDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
