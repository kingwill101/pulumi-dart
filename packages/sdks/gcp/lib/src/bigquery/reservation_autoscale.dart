// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationAutoscale {
  /// (Output)
  /// The slot capacity added to this reservation when autoscale happens. Will be between [0, max_slots].
  final pulumi.Input<int>? currentSlots;
  /// Number of slots to be scaled when needed.
  final pulumi.Input<int>? maxSlots;

  /// Creates a new [ReservationAutoscale].
  /// [currentSlots] (Output)
  /// [maxSlots] Number of slots to be scaled when needed.
  ReservationAutoscale({
    this.currentSlots,
    this.maxSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSlots': ?currentSlots,
      'maxSlots': ?maxSlots,
    };
  }

  factory ReservationAutoscale.fromMap(Map<String, dynamic> map) {
    return ReservationAutoscale(
      currentSlots: map['currentSlots'] == null ? null : (map['currentSlots']! as int).input(),
      maxSlots: map['maxSlots'] == null ? null : (map['maxSlots']! as int).input(),
    );
  }
}

