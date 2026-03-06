// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleHourlyRecurrence {
  /// Minutes of the hour the schedule will run.
  final pulumi.Input<int> minute;

  /// Creates a new [ScheduleHourlyRecurrence].
  /// [minute] Minutes of the hour the schedule will run.
  const ScheduleHourlyRecurrence({
    required this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': minute,
    };
  }

  factory ScheduleHourlyRecurrence.fromMap(Map<String, dynamic> map) {
    return ScheduleHourlyRecurrence(
      minute: pulumi.Input.fromValue(map['minute'] as int),
    );
  }
}

