// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasePostgresqlUpdate {
  final String dayOfWeek;
  final int duration;
  final String frequency;
  final int hourOfDay;
  final int weekOfMonth;

  /// Creates a new [GetDatabasePostgresqlUpdate].
  /// [dayOfWeek] Required.
  /// [duration] Required.
  /// [frequency] Required.
  /// [hourOfDay] Required.
  /// [weekOfMonth] Required.
  GetDatabasePostgresqlUpdate({
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

  factory GetDatabasePostgresqlUpdate.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlUpdate(
      dayOfWeek: map['dayOfWeek'] as String,
      duration: map['duration'] as int,
      frequency: map['frequency'] as String,
      hourOfDay: map['hourOfDay'] as int,
      weekOfMonth: map['weekOfMonth'] as int,
    );
  }
}

