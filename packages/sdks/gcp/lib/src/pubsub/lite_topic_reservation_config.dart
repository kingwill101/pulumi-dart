// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LiteTopicReservationConfig {
  /// The Reservation to use for this topic's throughput capacity.
  final pulumi.Input<String>? throughputReservation;

  /// Creates a new [LiteTopicReservationConfig].
  /// [throughputReservation] The Reservation to use for this topic's throughput capacity.
  LiteTopicReservationConfig({
    this.throughputReservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'throughputReservation': ?throughputReservation,
    };
  }

  factory LiteTopicReservationConfig.fromMap(Map<String, dynamic> map) {
    return LiteTopicReservationConfig(
      throughputReservation: map['throughputReservation'] == null ? null : (map['throughputReservation'] as String).input(),
    );
  }
}

