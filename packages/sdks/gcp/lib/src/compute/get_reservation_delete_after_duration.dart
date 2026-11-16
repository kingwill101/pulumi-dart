// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationDeleteAfterDuration {
  /// Number of nanoseconds for the auto-delete duration.
  final pulumi.Input<int> nanos;
  /// Number of seconds for the auto-delete duration.
  final pulumi.Input<String> seconds;

  /// Creates a new [GetReservationDeleteAfterDuration].
  /// [nanos] Number of nanoseconds for the auto-delete duration.
  /// [seconds] Number of seconds for the auto-delete duration.
  const GetReservationDeleteAfterDuration({
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': nanos,
      'seconds': seconds,
    };
  }

  factory GetReservationDeleteAfterDuration.fromMap(Map<String, dynamic> map) {
    return GetReservationDeleteAfterDuration(
      nanos: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['nanos'])),
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}
