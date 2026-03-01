// ignore_for_file: unused_element, unnecessary_cast


class AllocationAggregateReservationReservedResourceInfoAccelerator {
  /// Number of accelerators of specified type.
  final int? acceleratorCount;
  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final String? acceleratorType;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoAccelerator].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  AllocationAggregateReservationReservedResourceInfoAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoAccelerator.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoAccelerator(
      acceleratorCount: map['acceleratorCount'] == null ? null : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
    );
  }
}

