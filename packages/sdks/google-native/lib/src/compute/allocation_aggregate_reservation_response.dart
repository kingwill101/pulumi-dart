// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_reserved_resource_info_response.dart';

/// This reservation type is specified by total resource amounts (e.g. total count of CPUs) and can account for multiple instance SKUs. In other words, one can create instances of varying shapes against this reservation.
class AllocationAggregateReservationResponse {
  /// [Output only] List of resources currently in use.
  final pulumi.Input<List<AllocationAggregateReservationReservedResourceInfoResponse>> inUseResources;
  /// List of reserved resources (CPUs, memory, accelerators).
  final pulumi.Input<List<AllocationAggregateReservationReservedResourceInfoResponse>> reservedResources;
  /// The VM family that all instances scheduled against this reservation must belong to.
  final pulumi.Input<String> vmFamily;
  /// The workload type of the instances that will target this reservation.
  final pulumi.Input<String> workloadType;

  /// Creates a new [AllocationAggregateReservationResponse].
  /// [inUseResources] [Output only] List of resources currently in use.
  /// [reservedResources] List of reserved resources (CPUs, memory, accelerators).
  /// [vmFamily] The VM family that all instances scheduled against this reservation must belong to.
  /// [workloadType] The workload type of the instances that will target this reservation.
  const AllocationAggregateReservationResponse({
    required this.inUseResources,
    required this.reservedResources,
    required this.vmFamily,
    required this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inUseResources': pulumi.Input.mapInputValue<List<AllocationAggregateReservationReservedResourceInfoResponse>, List<Map<String, dynamic>>>(inUseResources, (value) => pulumi.Input.encodeList<AllocationAggregateReservationReservedResourceInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservedResources': pulumi.Input.mapInputValue<List<AllocationAggregateReservationReservedResourceInfoResponse>, List<Map<String, dynamic>>>(reservedResources, (value) => pulumi.Input.encodeList<AllocationAggregateReservationReservedResourceInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmFamily': vmFamily,
      'workloadType': workloadType,
    };
  }

  factory AllocationAggregateReservationResponse.fromMap(Map<String, dynamic> map) {
    return AllocationAggregateReservationResponse(
      inUseResources: pulumi.Input.fromValue(pulumi.Input.decodeList<AllocationAggregateReservationReservedResourceInfoResponse>(map['inUseResources']!, (value) => AllocationAggregateReservationReservedResourceInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      reservedResources: pulumi.Input.fromValue(pulumi.Input.decodeList<AllocationAggregateReservationReservedResourceInfoResponse>(map['reservedResources']!, (value) => AllocationAggregateReservationReservedResourceInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      vmFamily: pulumi.Input.fromValue(map['vmFamily'] as String),
      workloadType: pulumi.Input.fromValue(map['workloadType'] as String),
    );
  }
}
