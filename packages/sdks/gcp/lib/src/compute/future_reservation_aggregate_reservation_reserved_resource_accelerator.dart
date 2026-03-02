// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationAggregateReservationReservedResourceAccelerator {
  /// Number of accelerators of specified type.
  final pulumi.Input<int>? acceleratorCount;
  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final pulumi.Input<String>? acceleratorType;

  /// Creates a new [FutureReservationAggregateReservationReservedResourceAccelerator].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  FutureReservationAggregateReservationReservedResourceAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory FutureReservationAggregateReservationReservedResourceAccelerator.fromMap(Map<String, dynamic> map) {
    return FutureReservationAggregateReservationReservedResourceAccelerator(
      acceleratorCount: map['acceleratorCount'] == null ? null : (map['acceleratorCount'] as int).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
    );
  }
}

