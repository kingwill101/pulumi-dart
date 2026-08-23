// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';

class FutureReservationTimeWindow {
  final pulumi.Input<Duration>? duration;
  final pulumi.Input<String>? endTime;
  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final pulumi.Input<String>? startTime;

  /// Creates a new [FutureReservationTimeWindow].
  /// [duration] Optional.
  /// [endTime] Optional.
  /// [startTime] Start time of the Future Reservation. The start_time is an RFC3339 string.
  const FutureReservationTimeWindow({
    this.duration,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(duration, (value) => value.toMap()),
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory FutureReservationTimeWindow.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindow(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Duration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
