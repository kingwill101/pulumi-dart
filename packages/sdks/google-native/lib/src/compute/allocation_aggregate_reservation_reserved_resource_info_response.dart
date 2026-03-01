// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_response.dart';

class AllocationAggregateReservationReservedResourceInfoResponse {
  /// Properties of accelerator resources in this reservation.
  final AllocationAggregateReservationReservedResourceInfoAcceleratorResponse accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoResponse].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfoResponse({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': accelerator.toMap(),
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoResponse(
      accelerator: AllocationAggregateReservationReservedResourceInfoAcceleratorResponse.fromMap((map['accelerator'] as Map).cast<String, dynamic>()),
    );
  }
}

