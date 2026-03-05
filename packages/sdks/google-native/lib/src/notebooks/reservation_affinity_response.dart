// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinityResponse {
  /// Optional. Type of reservation to consume
  final pulumi.Input<String> consumeReservationType;
  /// Optional. Corresponds to the label key of reservation resource.
  final pulumi.Input<String> key;
  /// Optional. Corresponds to the label values of reservation resource.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ReservationAffinityResponse].
  /// [consumeReservationType] Optional. Type of reservation to consume
  /// [key] Optional. Corresponds to the label key of reservation resource.
  /// [values] Optional. Corresponds to the label values of reservation resource.
  ReservationAffinityResponse({
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

  factory ReservationAffinityResponse.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityResponse(
      consumeReservationType: pulumi.Input.fromValue(map['consumeReservationType'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

