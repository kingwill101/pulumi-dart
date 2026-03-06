// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_aggregate_reservation_reserved_resource_accelerator.dart';

class FutureReservationAggregateReservationReservedResource {
  /// Properties of accelerator resources in this reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAggregateReservationReservedResourceAccelerator>? accelerator;

  /// Creates a new [FutureReservationAggregateReservationReservedResource].
  /// [accelerator] Properties of accelerator resources in this reservation.
  const FutureReservationAggregateReservationReservedResource({
    this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': ?pulumi.Input.mapOptionalInputValue<FutureReservationAggregateReservationReservedResourceAccelerator, Map<String, dynamic>>(accelerator, (value) => value.toMap()),
    };
  }

  factory FutureReservationAggregateReservationReservedResource.fromMap(Map<String, dynamic> map) {
    return FutureReservationAggregateReservationReservedResource(
      accelerator: (() { final guardedValue = map['accelerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FutureReservationAggregateReservationReservedResourceAccelerator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

