// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_accelerator_response.dart';

class AllocationAggregateReservationReservedResourceInfoResponse {
  /// Properties of accelerator resources in this reservation.
  final pulumi.Input<
    AllocationAggregateReservationReservedResourceInfoAcceleratorResponse
  >
  accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoResponse].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfoResponse({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator':
          pulumi.Input.mapInputValue<
            AllocationAggregateReservationReservedResourceInfoAcceleratorResponse,
            Map<String, dynamic>
          >(accelerator, (value) => value.toMap()),
    };
  }

  factory AllocationAggregateReservationReservedResourceInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationAggregateReservationReservedResourceInfoResponse(
      accelerator: pulumi.Input.fromValue(
        AllocationAggregateReservationReservedResourceInfoAcceleratorResponse.fromMap(
          (map['accelerator']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
