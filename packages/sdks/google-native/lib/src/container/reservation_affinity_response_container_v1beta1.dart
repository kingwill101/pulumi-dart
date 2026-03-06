// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.
class ReservationAffinityResponseContainerV1beta1 {
  /// Corresponds to the type of reservation consumption.
  final pulumi.Input<String> consumeReservationType;
  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  final pulumi.Input<String> key;
  /// Corresponds to the label value(s) of reservation resource(s).
  final pulumi.Input<List<String>> values;

  /// Creates a new [ReservationAffinityResponseContainerV1beta1].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  /// [values] Corresponds to the label value(s) of reservation resource(s).
  const ReservationAffinityResponseContainerV1beta1({
    required this.consumeReservationType,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': consumeReservationType,
      'key': key,
      'values': values,
    };
  }

  factory ReservationAffinityResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityResponseContainerV1beta1(
      consumeReservationType: pulumi.Input.fromValue(map['consumeReservationType'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

