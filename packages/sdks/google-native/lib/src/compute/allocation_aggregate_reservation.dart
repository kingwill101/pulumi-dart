// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info.dart';
import 'allocation_aggregate_reservation_vm_family.dart';
import 'allocation_aggregate_reservation_workload_type.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservation {
  /// List of reserved resources (CPUs, memory, accelerators).
  final pulumi.Input<List<AllocationAggregateReservationReservedResourceInfo>>? reservedResources;
  /// The VM family that all instances scheduled against this reservation must belong to.
  final pulumi.Input<AllocationAggregateReservationVmFamily>? vmFamily;
  /// The workload type of the instances that will target this reservation.
  final pulumi.Input<AllocationAggregateReservationWorkloadType>? workloadType;

  /// Creates a new [AllocationAggregateReservation].
  /// [reservedResources] List of reserved resources (CPUs, memory, accelerators).
  /// [vmFamily] The VM family that all instances scheduled against this reservation must belong to.
  /// [workloadType] The workload type of the instances that will target this reservation.
  AllocationAggregateReservation({
    this.reservedResources,
    this.vmFamily,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservedResources': ?pulumi.Input.mapOptionalInputValue<List<AllocationAggregateReservationReservedResourceInfo>, List<Map<String, dynamic>>>(reservedResources, (value) => pulumi.Input.encodeList<AllocationAggregateReservationReservedResourceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmFamily': ?pulumi.Input.mapOptionalInputValue<AllocationAggregateReservationVmFamily, String>(vmFamily, (value) => value.value),
      'workloadType': ?pulumi.Input.mapOptionalInputValue<AllocationAggregateReservationWorkloadType, String>(workloadType, (value) => value.value),
    };
  }

  factory AllocationAggregateReservation.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservation(
      reservedResources: map['reservedResources'] == null ? null : (pulumi.Input.decodeList<AllocationAggregateReservationReservedResourceInfo>(map['reservedResources']!, (value) => AllocationAggregateReservationReservedResourceInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmFamily: map['vmFamily'] == null ? null : (AllocationAggregateReservationVmFamily.fromValue(map['vmFamily']! as String)).input(),
      workloadType: map['workloadType'] == null ? null : (AllocationAggregateReservationWorkloadType.fromValue(map['workloadType']! as String)).input(),
    );
  }
}

