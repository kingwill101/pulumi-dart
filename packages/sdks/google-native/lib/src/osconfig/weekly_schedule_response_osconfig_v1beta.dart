// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a weekly schedule.
class WeeklyScheduleResponseOsconfigV1beta {
  /// Day of the week.
  final pulumi.Input<String> dayOfWeek;

  /// Creates a new [WeeklyScheduleResponseOsconfigV1beta].
  /// [dayOfWeek] Day of the week.
  const WeeklyScheduleResponseOsconfigV1beta({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
    };
  }

  factory WeeklyScheduleResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponseOsconfigV1beta(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
    );
  }
}
