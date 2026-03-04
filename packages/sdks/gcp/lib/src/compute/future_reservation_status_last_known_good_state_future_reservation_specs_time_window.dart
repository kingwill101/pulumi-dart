// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_future_reservation_specs_time_window_duration.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow {
  /// Duration of the future reservation
  /// Structure is documented below.
  final pulumi.Input<
    FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration
  >?
  duration;

  /// End time of the future reservation in RFC3339 format.
  final pulumi.Input<String>? endTime;

  /// Start time of the future reservation in RFC3339 format.
  final pulumi.Input<String>? startTime;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow].
  /// [duration] Duration of the future reservation
  /// [endTime] End time of the future reservation in RFC3339 format.
  /// [startTime] Start time of the future reservation in RFC3339 format.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow({
    this.duration,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration':
          ?pulumi.Input.mapOptionalInputValue<
            FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration,
            Map<String, dynamic>
          >(duration, (value) => value.toMap()),
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow(
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
