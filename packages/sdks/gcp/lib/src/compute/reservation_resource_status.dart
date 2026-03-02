// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_resource_status_health_info.dart';
import 'reservation_resource_status_reservation_maintenance.dart';
import 'reservation_resource_status_specific_sku_allocation.dart';

class ReservationResourceStatus {
  /// (Output)
  /// Health information for the reservation.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationResourceStatusHealthInfo>>? healthInfos;
  /// (Output)
  /// The number of reservation blocks associated with this reservation.
  final pulumi.Input<int>? reservationBlockCount;
  /// (Output)
  /// Maintenance information for this reservation
  /// Structure is documented below.
  final pulumi.Input<List<ReservationResourceStatusReservationMaintenance>>? reservationMaintenances;
  /// (Output)
  /// Allocation Properties of this reservation.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationResourceStatusSpecificSkuAllocation>>? specificSkuAllocations;

  /// Creates a new [ReservationResourceStatus].
  /// [healthInfos] (Output)
  /// [reservationBlockCount] (Output)
  /// [reservationMaintenances] (Output)
  /// [specificSkuAllocations] (Output)
  ReservationResourceStatus({
    this.healthInfos,
    this.reservationBlockCount,
    this.reservationMaintenances,
    this.specificSkuAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthInfos': ?pulumi.Input.mapOptionalInputValue<List<ReservationResourceStatusHealthInfo>, List<Map<String, dynamic>>>(healthInfos, (value) => pulumi.Input.encodeList<ReservationResourceStatusHealthInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservationBlockCount': ?reservationBlockCount,
      'reservationMaintenances': ?pulumi.Input.mapOptionalInputValue<List<ReservationResourceStatusReservationMaintenance>, List<Map<String, dynamic>>>(reservationMaintenances, (value) => pulumi.Input.encodeList<ReservationResourceStatusReservationMaintenance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'specificSkuAllocations': ?pulumi.Input.mapOptionalInputValue<List<ReservationResourceStatusSpecificSkuAllocation>, List<Map<String, dynamic>>>(specificSkuAllocations, (value) => pulumi.Input.encodeList<ReservationResourceStatusSpecificSkuAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReservationResourceStatus.fromMap(Map<String, dynamic> map) {
    return ReservationResourceStatus(
      healthInfos: map['healthInfos'] == null ? null : (pulumi.Input.decodeList<ReservationResourceStatusHealthInfo>(map['healthInfos']!, (value) => ReservationResourceStatusHealthInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reservationBlockCount: map['reservationBlockCount'] == null ? null : (map['reservationBlockCount']! as int).input(),
      reservationMaintenances: map['reservationMaintenances'] == null ? null : (pulumi.Input.decodeList<ReservationResourceStatusReservationMaintenance>(map['reservationMaintenances']!, (value) => ReservationResourceStatusReservationMaintenance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      specificSkuAllocations: map['specificSkuAllocations'] == null ? null : (pulumi.Input.decodeList<ReservationResourceStatusSpecificSkuAllocation>(map['specificSkuAllocations']!, (value) => ReservationResourceStatusSpecificSkuAllocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

