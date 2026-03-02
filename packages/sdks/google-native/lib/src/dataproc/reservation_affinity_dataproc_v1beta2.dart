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
  ReservationAffinityDataprocV1beta2({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityConsumeReservationTypeDataprocV1beta2, String>(consumeReservationType, (value) => value.value),
      'key': ?key,
      'values': ?values,
    };
  }

  factory ReservationAffinityDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityDataprocV1beta2(
      consumeReservationType: map['consumeReservationType'] == null ? null : (ReservationAffinityConsumeReservationTypeDataprocV1beta2.fromValue(map['consumeReservationType'] as String)).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

