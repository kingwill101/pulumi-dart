// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_affinity_consume_reservation_type.dart';

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinity {
  /// Optional. Type of reservation to consume
  final pulumi.Input<ReservationAffinityConsumeReservationType>? consumeReservationType;
  /// Optional. Corresponds to the label key of reservation resource.
  final pulumi.Input<String>? key;
  /// Optional. Corresponds to the label values of reservation resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ReservationAffinity].
  /// [consumeReservationType] Optional. Type of reservation to consume
  /// [key] Optional. Corresponds to the label key of reservation resource.
  /// [values] Optional. Corresponds to the label values of reservation resource.
  ReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityConsumeReservationType, String>(consumeReservationType, (value) => value.value),
      'key': ?key,
      'values': ?values,
    };
  }

  factory ReservationAffinity.fromMap(Map<String, dynamic> map) {
    return ReservationAffinity(
      consumeReservationType: map['consumeReservationType'] == null ? null : (ReservationAffinityConsumeReservationType.fromValue(map['consumeReservationType']! as String)).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

