// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_response_compute_beta.dart';

class AllocationAggregateReservationReservedResourceInfoResponseComputeBeta {
  /// Properties of accelerator resources in this reservation.
  final pulumi.Input<AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta> accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoResponseComputeBeta].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfoResponseComputeBeta({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': pulumi.Input.mapInputValue<AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta, Map<String, dynamic>>(accelerator, (value) => value.toMap()),
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoResponseComputeBeta(
      accelerator: (AllocationAggregateReservationReservedResourceInfoAcceleratorResponseComputeBeta.fromMap((map['accelerator'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

