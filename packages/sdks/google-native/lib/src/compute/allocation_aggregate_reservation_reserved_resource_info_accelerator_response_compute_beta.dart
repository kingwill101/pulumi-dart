// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta {
  /// Number of accelerators of specified type.
  final pulumi.Input<int> acceleratorCount;

  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final pulumi.Input<String> acceleratorType;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as int),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
    );
  }
}
