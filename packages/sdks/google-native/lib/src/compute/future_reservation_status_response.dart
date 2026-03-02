// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_response.dart';
import 'future_reservation_status_specific_skuproperties_response.dart';

/// [Output only] Represents status related to the future reservation.
class FutureReservationStatusResponse {
  /// The current status of the requested amendment.
  final pulumi.Input<String> amendmentStatus;
  /// Fully qualified urls of the automatically created reservations at start_time.
  final pulumi.Input<List<String>> autoCreatedReservations;
  /// This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  final pulumi.Input<String> fulfilledCount;
  /// This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  final pulumi.Input<FutureReservationStatusLastKnownGoodStateResponse> lastKnownGoodState;
  /// Time when Future Reservation would become LOCKED, after which no modifications to Future Reservation will be allowed. Applicable only after the Future Reservation is in the APPROVED state. The lock_time is an RFC3339 string. The procurement_status will transition to PROCURING state at this time.
  final pulumi.Input<String> lockTime;
  /// Current state of this Future Reservation
  final pulumi.Input<String> procurementStatus;
  final pulumi.Input<FutureReservationStatusSpecificSKUPropertiesResponse> specificSkuProperties;

  /// Creates a new [FutureReservationStatusResponse].
  /// [amendmentStatus] The current status of the requested amendment.
  /// [autoCreatedReservations] Fully qualified urls of the automatically created reservations at start_time.
  /// [fulfilledCount] This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  /// [lastKnownGoodState] This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  /// [lockTime] Time when Future Reservation would become LOCKED, after which no modifications to Future Reservation will be allowed. Applicable only after the Future Reservation is in the APPROVED state. The lock_time is an RFC3339 string. The procurement_status will transition to PROCURING state at this time.
  /// [procurementStatus] Current state of this Future Reservation
  /// [specificSkuProperties] Required.
  FutureReservationStatusResponse({
    required this.amendmentStatus,
    required this.autoCreatedReservations,
    required this.fulfilledCount,
    required this.lastKnownGoodState,
    required this.lockTime,
    required this.procurementStatus,
    required this.specificSkuProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amendmentStatus': amendmentStatus,
      'autoCreatedReservations': autoCreatedReservations,
      'fulfilledCount': fulfilledCount,
      'lastKnownGoodState': pulumi.Input.mapInputValue<FutureReservationStatusLastKnownGoodStateResponse, Map<String, dynamic>>(lastKnownGoodState, (value) => value.toMap()),
      'lockTime': lockTime,
      'procurementStatus': procurementStatus,
      'specificSkuProperties': pulumi.Input.mapInputValue<FutureReservationStatusSpecificSKUPropertiesResponse, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
    };
  }

  factory FutureReservationStatusResponse.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusResponse(
      amendmentStatus: (map['amendmentStatus'] as String).input(),
      autoCreatedReservations: ((map['autoCreatedReservations'] as List).cast<String>()).input(),
      fulfilledCount: (map['fulfilledCount'] as String).input(),
      lastKnownGoodState: (FutureReservationStatusLastKnownGoodStateResponse.fromMap((map['lastKnownGoodState'] as Map).cast<String, dynamic>())).input(),
      lockTime: (map['lockTime'] as String).input(),
      procurementStatus: (map['procurementStatus'] as String).input(),
      specificSkuProperties: (FutureReservationStatusSpecificSKUPropertiesResponse.fromMap((map['specificSkuProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

