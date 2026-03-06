// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_affinity_consume_reservation_type_dataproc_v1beta2.dart';

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinityDataprocV1beta2 {
  /// Optional. Type of reservation to consume
  final pulumi.Input<ReservationAffinityConsumeReservationTypeDataprocV1beta2>? consumeReservationType;
  /// Optional. Corresponds to the label key of reservation resource.
  final pulumi.Input<String>? key;
  /// Optional. Corresponds to the label values of reservation resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ReservationAffinityDataprocV1beta2].
  /// [consumeReservationType] Optional. Type of reservation to consume
  /// [key] Optional. Corresponds to the label key of reservation resource.
  /// [values] Optional. Corresponds to the label values of reservation resource.
  const ReservationAffinityDataprocV1beta2({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityConsumeReservationTypeDataprocV1beta2, String>(consumeReservationType, (value) => value.wireValue),
      'key': ?key,
      'values': ?values,
    };
  }

  factory ReservationAffinityDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityDataprocV1beta2(
      consumeReservationType: (() { final guardedValue = map['consumeReservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationAffinityConsumeReservationTypeDataprocV1beta2.fromValue(guardedValue as String)); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

