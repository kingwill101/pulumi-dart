// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_resource_status_health_info.dart';
import 'get_reservation_resource_status_reservation_maintenance.dart';
import 'get_reservation_resource_status_specific_sku_allocation.dart';

class GetReservationResourceStatus {
  /// Health information for the reservation.
  final pulumi.Input<List<GetReservationResourceStatusHealthInfo>> healthInfos;
  /// The number of reservation blocks associated with this reservation.
  final pulumi.Input<int> reservationBlockCount;
  /// Maintenance information for this reservation
  final pulumi.Input<List<GetReservationResourceStatusReservationMaintenance>> reservationMaintenances;
  /// Allocation Properties of this reservation.
  final pulumi.Input<List<GetReservationResourceStatusSpecificSkuAllocation>> specificSkuAllocations;

  /// Creates a new [GetReservationResourceStatus].
  /// [healthInfos] Health information for the reservation.
  /// [reservationBlockCount] The number of reservation blocks associated with this reservation.
  /// [reservationMaintenances] Maintenance information for this reservation
  /// [specificSkuAllocations] Allocation Properties of this reservation.
  const GetReservationResourceStatus({
    required this.healthInfos,
    required this.reservationBlockCount,
    required this.reservationMaintenances,
    required this.specificSkuAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthInfos': pulumi.Input.mapInputValue<List<GetReservationResourceStatusHealthInfo>, List<Map<String, dynamic>>>(healthInfos, (value) => pulumi.Input.encodeList<GetReservationResourceStatusHealthInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservationBlockCount': reservationBlockCount,
      'reservationMaintenances': pulumi.Input.mapInputValue<List<GetReservationResourceStatusReservationMaintenance>, List<Map<String, dynamic>>>(reservationMaintenances, (value) => pulumi.Input.encodeList<GetReservationResourceStatusReservationMaintenance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'specificSkuAllocations': pulumi.Input.mapInputValue<List<GetReservationResourceStatusSpecificSkuAllocation>, List<Map<String, dynamic>>>(specificSkuAllocations, (value) => pulumi.Input.encodeList<GetReservationResourceStatusSpecificSkuAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetReservationResourceStatus.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatus(
      healthInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetReservationResourceStatusHealthInfo>(map['healthInfos']!, (value) => GetReservationResourceStatusHealthInfo.fromMap((value as Map).cast<String, dynamic>()))),
      reservationBlockCount: pulumi.Input.fromValue((map['reservationBlockCount'] as num).toInt()),
      reservationMaintenances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetReservationResourceStatusReservationMaintenance>(map['reservationMaintenances']!, (value) => GetReservationResourceStatusReservationMaintenance.fromMap((value as Map).cast<String, dynamic>()))),
      specificSkuAllocations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetReservationResourceStatusSpecificSkuAllocation>(map['specificSkuAllocations']!, (value) => GetReservationResourceStatusSpecificSkuAllocation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
