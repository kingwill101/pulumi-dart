// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_compute_beta.dart';

class AllocationAggregateReservationReservedResourceInfoComputeBeta {
  /// Properties of accelerator resources in this reservation.
  final pulumi.Input<AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta>? accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoComputeBeta].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfoComputeBeta({
    this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': ?pulumi.Input.mapOptionalInputValue<AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta, Map<String, dynamic>>(accelerator, (value) => value.toMap()),
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoComputeBeta(
      accelerator: map['accelerator'] == null ? null : (AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta.fromMap((map['accelerator']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

