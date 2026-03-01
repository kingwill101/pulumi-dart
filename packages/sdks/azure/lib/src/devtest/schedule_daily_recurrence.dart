// ignore_for_file: unused_element, unnecessary_cast


class ScheduleDailyRecurrence {
  /// The time each day when the schedule takes effect.
  final String time;

  /// Creates a new [ScheduleDailyRecurrence].
  /// [time] The time each day when the schedule takes effect.
  ScheduleDailyRecurrence({
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
    };
  }

  factory ScheduleDailyRecurrence.fromMap(Map<String, dynamic> map) {
    return ScheduleDailyRecurrence(
      time: map['time'] as String,
    );
  }
}

