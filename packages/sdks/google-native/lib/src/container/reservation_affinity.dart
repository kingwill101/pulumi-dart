// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_affinity_consume_reservation_type.dart';

/// [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.
class ReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  final pulumi.Input<ReservationAffinityConsumeReservationType>? consumeReservationType;
  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  final pulumi.Input<String>? key;
  /// Corresponds to the label value(s) of reservation resource(s).
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ReservationAffinity].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  /// [values] Corresponds to the label value(s) of reservation resource(s).
  const ReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityConsumeReservationType, String>(consumeReservationType, (value) => value.wireValue),
      'key': ?key,
      'values': ?values,
    };
  }

  factory ReservationAffinity.fromMap(Map<String, dynamic> map) {
    return ReservationAffinity(
      consumeReservationType: (() { final guardedValue = map['consumeReservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationAffinityConsumeReservationType.fromValue(guardedValue as String)); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
