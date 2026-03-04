// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_accelerator.dart';

class AllocationAggregateReservationReservedResourceInfo {
  /// Properties of accelerator resources in this reservation.
  final pulumi.Input<
    AllocationAggregateReservationReservedResourceInfoAccelerator
  >?
  accelerator;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfo].
  /// [accelerator] Properties of accelerator resources in this reservation.
  AllocationAggregateReservationReservedResourceInfo({this.accelerator});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationAggregateReservationReservedResourceInfoAccelerator,
            Map<String, dynamic>
          >(accelerator, (value) => value.toMap()),
    };
  }

  factory AllocationAggregateReservationReservedResourceInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationAggregateReservationReservedResourceInfo(
      accelerator: (() {
        final guardedValue = map['accelerator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllocationAggregateReservationReservedResourceInfoAccelerator.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
