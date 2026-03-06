// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

class FutureReservationTimeWindowResponse {
  final pulumi.Input<DurationResponse> duration;
  final pulumi.Input<String> endTime;
  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final pulumi.Input<String> startTime;

  /// Creates a new [FutureReservationTimeWindowResponse].
  /// [duration] Required.
  /// [endTime] Required.
  /// [startTime] Start time of the Future Reservation. The start_time is an RFC3339 string.
  const FutureReservationTimeWindowResponse({
    required this.duration,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(duration, (value) => value.toMap()),
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory FutureReservationTimeWindowResponse.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindowResponse(
      duration: pulumi.Input.fromValue(DurationResponse.fromMap((map['duration']! as Map).cast<String, dynamic>())),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

