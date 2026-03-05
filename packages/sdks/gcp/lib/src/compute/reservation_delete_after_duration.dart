// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationDeleteAfterDuration {
  /// Number of nanoseconds for the auto-delete duration.
  final pulumi.Input<int>? nanos;
  /// Number of seconds for the auto-delete duration.
  final pulumi.Input<String>? seconds;

  /// Creates a new [ReservationDeleteAfterDuration].
  /// [nanos] Number of nanoseconds for the auto-delete duration.
  /// [seconds] Number of seconds for the auto-delete duration.
  ReservationDeleteAfterDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory ReservationDeleteAfterDuration.fromMap(Map<String, dynamic> map) {
    return ReservationDeleteAfterDuration(
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

