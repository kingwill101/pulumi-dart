// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for this topic's Reservation usage.
class ReservationConfig {
  /// The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final pulumi.Input<String>? throughputReservation;

  /// Creates a new [ReservationConfig].
  /// [throughputReservation] The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  const ReservationConfig({
    this.throughputReservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throughputReservation': ?throughputReservation,
    };
  }

  factory ReservationConfig.fromMap(Map<String, dynamic> map) {
    return ReservationConfig(
      throughputReservation: (() { final guardedValue = map['throughputReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

