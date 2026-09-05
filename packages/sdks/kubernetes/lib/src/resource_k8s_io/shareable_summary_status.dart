// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shareable_capacity_status.dart';

/// ShareableSummaryStatus reports aggregate capacity for a pool that contains devices with AllowMultipleAllocations.
class ShareableSummaryStatus {
  /// Capacity reports aggregate total, consumed, and available amounts per shareable capacity key across the pool.
  final pulumi.Input<List<ShareableCapacityStatus>?>? capacity;
  /// FullyAvailableDevices is the number of shareable devices with no capacity consumed.
  final pulumi.Input<int> fullyAvailableDevices;
  /// PartiallyAvailableDevices is the number of shareable devices with some but not all capacity consumed.
  final pulumi.Input<int> partiallyAvailableDevices;

  /// Creates a new [ShareableSummaryStatus].
  /// [capacity] Capacity reports aggregate total, consumed, and available amounts per shareable capacity key across the pool.
  /// [fullyAvailableDevices] FullyAvailableDevices is the number of shareable devices with no capacity consumed.
  /// [partiallyAvailableDevices] PartiallyAvailableDevices is the number of shareable devices with some but not all capacity consumed.
  const ShareableSummaryStatus({
    this.capacity,
    required this.fullyAvailableDevices,
    required this.partiallyAvailableDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<List<ShareableCapacityStatus>, List<Map<String, dynamic>>>(capacity, (value) => pulumi.Input.encodeList<ShareableCapacityStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyAvailableDevices': fullyAvailableDevices,
      'partiallyAvailableDevices': partiallyAvailableDevices,
    };
  }

  factory ShareableSummaryStatus.fromMap(Map<String, dynamic> map) {
    return ShareableSummaryStatus(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareableCapacityStatus>(guardedValue, (value) => ShareableCapacityStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fullyAvailableDevices: pulumi.Input.fromValue((map['fullyAvailableDevices'] as num).toInt()),
      partiallyAvailableDevices: pulumi.Input.fromValue((map['partiallyAvailableDevices'] as num).toInt()),
    );
  }
}
