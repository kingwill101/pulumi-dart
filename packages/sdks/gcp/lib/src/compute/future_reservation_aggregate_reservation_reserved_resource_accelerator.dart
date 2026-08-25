// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationAggregateReservationReservedResourceAccelerator {
  /// Number of accelerators of specified type.
  final pulumi.Input<int?>? acceleratorCount;
  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final pulumi.Input<String?>? acceleratorType;

  /// Creates a new [FutureReservationAggregateReservationReservedResourceAccelerator].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  const FutureReservationAggregateReservationReservedResourceAccelerator({
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
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
