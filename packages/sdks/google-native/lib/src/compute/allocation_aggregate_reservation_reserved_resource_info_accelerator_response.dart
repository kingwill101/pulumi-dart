// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllocationAggregateReservationReservedResourceInfoAcceleratorResponse {
  /// Number of accelerators of specified type.
  final pulumi.Input<int> acceleratorCount;
  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final pulumi.Input<String> acceleratorType;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoAcceleratorResponse].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  const AllocationAggregateReservationReservedResourceInfoAcceleratorResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoAcceleratorResponse.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoAcceleratorResponse(
      acceleratorCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['acceleratorCount'])),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
    );
  }
}
