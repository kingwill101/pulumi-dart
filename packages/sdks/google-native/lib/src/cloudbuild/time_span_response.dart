// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Start and end times for a build execution phase.
class TimeSpanResponse {
  /// End of time span.
  final pulumi.Input<String> endTime;

  /// Start of time span.
  final pulumi.Input<String> startTime;

  /// Creates a new [TimeSpanResponse].
  /// [endTime] End of time span.
  /// [startTime] Start of time span.
  TimeSpanResponse({required this.endTime, required this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endTime': endTime, 'startTime': startTime};
  }

  factory TimeSpanResponse.fromMap(Map<String, dynamic> map) {
    return TimeSpanResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
