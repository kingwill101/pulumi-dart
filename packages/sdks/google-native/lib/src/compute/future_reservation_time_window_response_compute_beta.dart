// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';

class FutureReservationTimeWindowResponseComputeBeta {
  final pulumi.Input<DurationResponseComputeBeta> duration;
  final pulumi.Input<String> endTime;
  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final pulumi.Input<String> startTime;

  /// Creates a new [FutureReservationTimeWindowResponseComputeBeta].
  /// [duration] Required.
  /// [endTime] Required.
  /// [startTime] Start time of the Future Reservation. The start_time is an RFC3339 string.
  FutureReservationTimeWindowResponseComputeBeta({
    required this.duration,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(duration, (value) => value.toMap()),
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory FutureReservationTimeWindowResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindowResponseComputeBeta(
      duration: (DurationResponseComputeBeta.fromMap((map['duration'] as Map).cast<String, dynamic>())).input(),
      endTime: (map['endTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

