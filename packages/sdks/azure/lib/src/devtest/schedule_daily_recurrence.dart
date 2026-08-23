// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleDailyRecurrence {
  /// The time each day when the schedule takes effect.
  final pulumi.Input<String> time;

  /// Creates a new [ScheduleDailyRecurrence].
  /// [time] The time each day when the schedule takes effect.
  const ScheduleDailyRecurrence({
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
    };
  }

  factory ScheduleDailyRecurrence.fromMap(Map<String, dynamic> map) {
    return ScheduleDailyRecurrence(
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}
