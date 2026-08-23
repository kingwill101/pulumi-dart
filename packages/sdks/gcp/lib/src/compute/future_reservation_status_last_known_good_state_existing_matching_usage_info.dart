// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo {
  /// Count representing minimum(FR totalCount, matching_reserved_capacity+matching_unreserved_instances).
  final pulumi.Input<String>? count;
  /// Timestamp when the matching usage was calculated.
  final pulumi.Input<String>? timeStamp;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo].
  /// [count] Count representing minimum(FR totalCount, matching_reserved_capacity+matching_unreserved_instances).
  /// [timeStamp] Timestamp when the matching usage was calculated.
  const FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo({
    this.count,
    this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'timeStamp': ?timeStamp,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeStamp: (() { final guardedValue = map['timeStamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
