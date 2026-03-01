// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlV2Updates {
  /// The numeric reference for the day of the week to perform maintenance. 1 is Monday, 2 is Tuesday, through to 7 which is Sunday.
  final int dayOfWeek;
  /// The maximum maintenance window time in hours.
  final int duration;
  /// How frequently maintenance occurs. Currently can only be weekly.
  final String frequency;
  /// The hour of the day (0-23) when maintenance occurs.
  final int hourOfDay;

  /// Creates a new [GetDatabaseMysqlV2Updates].
  /// [dayOfWeek] The numeric reference for the day of the week to perform maintenance. 1 is Monday, 2 is Tuesday, through to 7 which is Sunday.
  /// [duration] The maximum maintenance window time in hours.
  /// [frequency] How frequently maintenance occurs. Currently can only be weekly.
  /// [hourOfDay] The hour of the day (0-23) when maintenance occurs.
  GetDatabaseMysqlV2Updates({
    required this.dayOfWeek,
    required this.duration,
    required this.frequency,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'duration': duration,
      'frequency': frequency,
      'hourOfDay': hourOfDay,
    };
  }

  factory GetDatabaseMysqlV2Updates.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlV2Updates(
      dayOfWeek: map['dayOfWeek'] as int,
      duration: map['duration'] as int,
      frequency: map['frequency'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}

