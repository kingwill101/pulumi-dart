// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationAssignmentSchedulingPolicy {
  /// If present and &gt; 0, the reservation will attempt to limit the concurrency
  /// of jobs running for any particular project within it to the given value.
  final pulumi.Input<int?>? concurrency;
  /// If present and &gt; 0, the reservation will attempt to limit the slot
  /// consumption of queries running for any particular project within it to
  /// the given value.
  final pulumi.Input<int?>? maxSlots;

  /// Creates a new [ReservationAssignmentSchedulingPolicy].
  /// [concurrency] If present and &gt; 0, the reservation will attempt to limit the concurrency
  /// [maxSlots] If present and &gt; 0, the reservation will attempt to limit the slot
  const ReservationAssignmentSchedulingPolicy({
    this.concurrency,
    this.maxSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrency': ?concurrency,
      'maxSlots': ?maxSlots,
    };
  }

  factory ReservationAssignmentSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return ReservationAssignmentSchedulingPolicy(
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxSlots: (() { final guardedValue = map['maxSlots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
