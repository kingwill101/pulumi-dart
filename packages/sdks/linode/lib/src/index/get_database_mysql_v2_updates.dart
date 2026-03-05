// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlV2Updates {
  /// The numeric reference for the day of the week to perform maintenance. 1 is Monday, 2 is Tuesday, through to 7 which is Sunday.
  final pulumi.Input<int> dayOfWeek;
  /// The maximum maintenance window time in hours.
  final pulumi.Input<int> duration;
  /// How frequently maintenance occurs. Currently can only be weekly.
  final pulumi.Input<String> frequency;
  /// The hour of the day (0-23) when maintenance occurs.
  final pulumi.Input<int> hourOfDay;

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
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as int),
      duration: pulumi.Input.fromValue(map['duration'] as int),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
    );
  }
}

