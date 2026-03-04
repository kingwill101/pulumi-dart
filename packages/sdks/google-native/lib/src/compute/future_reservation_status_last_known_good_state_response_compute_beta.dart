// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_future_reservation_specs_response_compute_beta.dart';

/// The state that the future reservation will be reverted to should the amendment be declined.
class FutureReservationStatusLastKnownGoodStateResponseComputeBeta {
  /// The description of the FutureReservation before an amendment was requested.
  final pulumi.Input<String> description;
  final pulumi.Input<
    FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta
  >
  futureReservationSpecs;

  /// The lock time of the FutureReservation before an amendment was requested.
  final pulumi.Input<String> lockTime;

  /// The name prefix of the Future Reservation before an amendment was requested.
  final pulumi.Input<String> namePrefix;

  /// The status of the last known good state for the Future Reservation.
  final pulumi.Input<String> procurementStatus;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateResponseComputeBeta].
  /// [description] The description of the FutureReservation before an amendment was requested.
  /// [futureReservationSpecs] Required.
  /// [lockTime] The lock time of the FutureReservation before an amendment was requested.
  /// [namePrefix] The name prefix of the Future Reservation before an amendment was requested.
  /// [procurementStatus] The status of the last known good state for the Future Reservation.
  FutureReservationStatusLastKnownGoodStateResponseComputeBeta({
    required this.description,
    required this.futureReservationSpecs,
    required this.lockTime,
    required this.namePrefix,
    required this.procurementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'futureReservationSpecs':
          pulumi.Input.mapInputValue<
            FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta,
            Map<String, dynamic>
          >(futureReservationSpecs, (value) => value.toMap()),
      'lockTime': lockTime,
      'namePrefix': namePrefix,
      'procurementStatus': procurementStatus,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateResponseComputeBeta(
      description: pulumi.Input.fromValue(map['description'] as String),
      futureReservationSpecs: pulumi.Input.fromValue(
        FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta.fromMap(
          (map['futureReservationSpecs']! as Map).cast<String, dynamic>(),
        ),
      ),
      lockTime: pulumi.Input.fromValue(map['lockTime'] as String),
      namePrefix: pulumi.Input.fromValue(map['namePrefix'] as String),
      procurementStatus: pulumi.Input.fromValue(
        map['procurementStatus'] as String,
      ),
    );
  }
}
