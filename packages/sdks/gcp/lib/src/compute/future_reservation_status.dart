// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state.dart';
import 'future_reservation_status_specific_sku_properties.dart';

class FutureReservationStatus {
  /// The current status of the requested amendment.
  /// Possible values are: .
  final pulumi.Input<String>? amendmentStatus;
  /// Fully qualified urls of the automatically created reservations at startTime.
  final pulumi.Input<List<String>>? autoCreatedReservations;
  /// This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  final pulumi.Input<String>? fulfilledCount;
  /// This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationStatusLastKnownGoodState>? lastKnownGoodState;
  /// The lock time of the FutureReservation before an amendment was requested.
  final pulumi.Input<String>? lockTime;
  /// The status of the last known good state for the Future Reservation
  /// Possible values are: .
  final pulumi.Input<String>? procurementStatus;
  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationStatusSpecificSkuProperties>? specificSkuProperties;

  /// Creates a new [FutureReservationStatus].
  /// [amendmentStatus] The current status of the requested amendment.
  /// [autoCreatedReservations] Fully qualified urls of the automatically created reservations at startTime.
  /// [fulfilledCount] This count indicates the fulfilled capacity so far. This is set during "PROVISIONING" state. This count also includes capacity delivered as part of existing matching reservations.
  /// [lastKnownGoodState] This field represents the future reservation before an amendment was requested. If the amendment is declined, the Future Reservation will be reverted to the last known good state. The last known good state is not set when updating a future reservation whose Procurement Status is DRAFTING.
  /// [lockTime] The lock time of the FutureReservation before an amendment was requested.
  /// [procurementStatus] The status of the last known good state for the Future Reservation
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  FutureReservationStatus({
    this.amendmentStatus,
    this.autoCreatedReservations,
    this.fulfilledCount,
    this.lastKnownGoodState,
    this.lockTime,
    this.procurementStatus,
    this.specificSkuProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amendmentStatus': ?amendmentStatus,
      'autoCreatedReservations': ?autoCreatedReservations,
      'fulfilledCount': ?fulfilledCount,
      'lastKnownGoodState': ?pulumi.Input.mapOptionalInputValue<FutureReservationStatusLastKnownGoodState, Map<String, dynamic>>(lastKnownGoodState, (value) => value.toMap()),
      'lockTime': ?lockTime,
      'procurementStatus': ?procurementStatus,
      'specificSkuProperties': ?pulumi.Input.mapOptionalInputValue<FutureReservationStatusSpecificSkuProperties, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
    };
  }

  factory FutureReservationStatus.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatus(
      amendmentStatus: map['amendmentStatus'] == null ? null : (map['amendmentStatus'] as String).input(),
      autoCreatedReservations: map['autoCreatedReservations'] == null ? null : ((map['autoCreatedReservations'] as List).cast<String>()).input(),
      fulfilledCount: map['fulfilledCount'] == null ? null : (map['fulfilledCount'] as String).input(),
      lastKnownGoodState: map['lastKnownGoodState'] == null ? null : (FutureReservationStatusLastKnownGoodState.fromMap((map['lastKnownGoodState'] as Map).cast<String, dynamic>())).input(),
      lockTime: map['lockTime'] == null ? null : (map['lockTime'] as String).input(),
      procurementStatus: map['procurementStatus'] == null ? null : (map['procurementStatus'] as String).input(),
      specificSkuProperties: map['specificSkuProperties'] == null ? null : (FutureReservationStatusSpecificSkuProperties.fromMap((map['specificSkuProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

