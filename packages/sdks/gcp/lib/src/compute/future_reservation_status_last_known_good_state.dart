// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_existing_matching_usage_info.dart';
import 'future_reservation_status_last_known_good_state_future_reservation_specs.dart';

class FutureReservationStatusLastKnownGoodState {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Represents the matching usage for the future reservation before an amendment was requested.
  /// Structure is documented below.
  final pulumi.Input<
    FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo
  >?
  existingMatchingUsageInfo;

  /// The previous instance-related properties of the Future Reservation.
  /// Structure is documented below.
  final pulumi.Input<
    FutureReservationStatusLastKnownGoodStateFutureReservationSpecs
  >?
  futureReservationSpecs;

  /// The lock time of the FutureReservation before an amendment was requested.
  final pulumi.Input<String>? lockTime;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final pulumi.Input<String>? namePrefix;

  /// The status of the last known good state for the Future Reservation
  /// Possible values are: .
  final pulumi.Input<String>? procurementStatus;

  /// Creates a new [FutureReservationStatusLastKnownGoodState].
  /// [description] An optional description of this resource.
  /// [existingMatchingUsageInfo] Represents the matching usage for the future reservation before an amendment was requested.
  /// [futureReservationSpecs] The previous instance-related properties of the Future Reservation.
  /// [lockTime] The lock time of the FutureReservation before an amendment was requested.
  /// [namePrefix] Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  /// [procurementStatus] The status of the last known good state for the Future Reservation
  FutureReservationStatusLastKnownGoodState({
    this.description,
    this.existingMatchingUsageInfo,
    this.futureReservationSpecs,
    this.lockTime,
    this.namePrefix,
    this.procurementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'existingMatchingUsageInfo':
          ?pulumi.Input.mapOptionalInputValue<
            FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo,
            Map<String, dynamic>
          >(existingMatchingUsageInfo, (value) => value.toMap()),
      'futureReservationSpecs':
          ?pulumi.Input.mapOptionalInputValue<
            FutureReservationStatusLastKnownGoodStateFutureReservationSpecs,
            Map<String, dynamic>
          >(futureReservationSpecs, (value) => value.toMap()),
      'lockTime': ?lockTime,
      'namePrefix': ?namePrefix,
      'procurementStatus': ?procurementStatus,
    };
  }

  factory FutureReservationStatusLastKnownGoodState.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      existingMatchingUsageInfo: (() {
        final guardedValue = map['existingMatchingUsageInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FutureReservationStatusLastKnownGoodStateExistingMatchingUsageInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      futureReservationSpecs: (() {
        final guardedValue = map['futureReservationSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lockTime: (() {
        final guardedValue = map['lockTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      procurementStatus: (() {
        final guardedValue = map['procurementStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
