// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_time_window_duration.dart';

class FutureReservationTimeWindow {
  /// Duration of the future reservation
  /// Structure is documented below.
  final pulumi.Input<FutureReservationTimeWindowDuration>? duration;
  /// End time of the future reservation in RFC3339 format.
  final pulumi.Input<String>? endTime;
  /// Start time of the future reservation in RFC3339 format.
  final pulumi.Input<String> startTime;

  /// Creates a new [FutureReservationTimeWindow].
  /// [duration] Duration of the future reservation
  /// [endTime] End time of the future reservation in RFC3339 format.
  /// [startTime] Start time of the future reservation in RFC3339 format.
  const FutureReservationTimeWindow({
    this.duration,
    this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?pulumi.Input.mapOptionalInputValue<FutureReservationTimeWindowDuration, Map<String, dynamic>>(duration, (value) => value.toMap()),
      'endTime': ?endTime,
      'startTime': startTime,
    };
  }

  factory FutureReservationTimeWindow.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindow(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FutureReservationTimeWindowDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
