// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for this topic's Reservation usage.
class ReservationConfigResponse {
  /// The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final pulumi.Input<String> throughputReservation;

  /// Creates a new [ReservationConfigResponse].
  /// [throughputReservation] The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  const ReservationConfigResponse({
    required this.throughputReservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throughputReservation': throughputReservation,
    };
  }

  factory ReservationConfigResponse.fromMap(Map<String, dynamic> map) {
    return ReservationConfigResponse(
      throughputReservation: pulumi.Input.fromValue(map['throughputReservation'] as String),
    );
  }
}

