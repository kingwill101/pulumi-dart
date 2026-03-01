// ignore_for_file: unused_element, unnecessary_cast


/// The settings for this topic's Reservation usage.
class ReservationConfigResponse {
  /// The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final String throughputReservation;

  /// Creates a new [ReservationConfigResponse].
  /// [throughputReservation] The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  ReservationConfigResponse({
    required this.throughputReservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throughputReservation': throughputReservation,
    };
  }

  factory ReservationConfigResponse.fromMap(Map<String, dynamic> map) {
    return ReservationConfigResponse(
      throughputReservation: map['throughputReservation'] as String,
    );
  }
}

