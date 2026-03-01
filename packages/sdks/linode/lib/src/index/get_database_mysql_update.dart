// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlUpdate {
  final String dayOfWeek;
  final int duration;
  final String frequency;
  final int hourOfDay;
  final int weekOfMonth;

  /// Creates a new [GetDatabaseMysqlUpdate].
  /// [dayOfWeek] Required.
  /// [duration] Required.
  /// [frequency] Required.
  /// [hourOfDay] Required.
  /// [weekOfMonth] Required.
  GetDatabaseMysqlUpdate({
    required this.dayOfWeek,
    required this.duration,
    required this.frequency,
    required this.hourOfDay,
    required this.weekOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'duration': duration,
      'frequency': frequency,
      'hourOfDay': hourOfDay,
      'weekOfMonth': weekOfMonth,
    };
  }

  factory GetDatabaseMysqlUpdate.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlUpdate(
      dayOfWeek: map['dayOfWeek'] as String,
      duration: map['duration'] as int,
      frequency: map['frequency'] as String,
      hourOfDay: map['hourOfDay'] as int,
      weekOfMonth: map['weekOfMonth'] as int,
    );
  }
}

