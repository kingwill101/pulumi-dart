// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_aggregate_reservation_reserved_resource.dart';

class FutureReservationAggregateReservation {
  /// futureReservations.list of reserved resources (CPUs, memory, accelerators).
  /// Structure is documented below.
  final pulumi.Input<List<FutureReservationAggregateReservationReservedResource>> reservedResources;
  /// The VM family that all instances scheduled against this reservation must belong to.
  /// Possible values are: `VM_FAMILY_CLOUD_TPU_DEVICE_CT3`, `VM_FAMILY_CLOUD_TPU_LITE_DEVICE_CT5L`, `VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT5LP`, `VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT6E`, `VM_FAMILY_CLOUD_TPU_POD_SLICE_CT3P`, `VM_FAMILY_CLOUD_TPU_POD_SLICE_CT4P`, `VM_FAMILY_CLOUD_TPU_POD_SLICE_CT5P`.
  final pulumi.Input<String?>? vmFamily;
  /// The workload type of the instances that will target this reservation.
  /// Possible values are: `BATCH`, `SERVING`, `UNSPECIFIED`.
  final pulumi.Input<String?>? workloadType;

  /// Creates a new [FutureReservationAggregateReservation].
  /// [reservedResources] futureReservations.list of reserved resources (CPUs, memory, accelerators).
  /// [vmFamily] The VM family that all instances scheduled against this reservation must belong to.
  /// [workloadType] The workload type of the instances that will target this reservation.
  const FutureReservationAggregateReservation({
    required this.reservedResources,
    this.vmFamily,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservedResources': pulumi.Input.mapInputValue<List<FutureReservationAggregateReservationReservedResource>, List<Map<String, dynamic>>>(reservedResources, (value) => pulumi.Input.encodeList<FutureReservationAggregateReservationReservedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmFamily': ?vmFamily,
      'workloadType': ?workloadType,
    };
  }

  factory FutureReservationAggregateReservation.fromMap(Map<String, dynamic> map) {
    return FutureReservationAggregateReservation(
      reservedResources: pulumi.Input.fromValue(pulumi.Input.decodeList<FutureReservationAggregateReservationReservedResource>(map['reservedResources']!, (value) => FutureReservationAggregateReservationReservedResource.fromMap((value as Map).cast<String, dynamic>()))),
      vmFamily: (() { final guardedValue = map['vmFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadType: (() { final guardedValue = map['workloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
