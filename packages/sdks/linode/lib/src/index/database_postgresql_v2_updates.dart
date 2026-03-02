// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabasePostgresqlV2Updates {
  /// The numeric reference for the day of the week to perform maintenance. 1 is Monday, 2 is Tuesday, through to 7 which is Sunday.
  final pulumi.Input<int>? dayOfWeek;
  /// The maximum maintenance window time in hours.
  final pulumi.Input<int>? duration;
  /// How frequently maintenance occurs. Currently can only be weekly.
  final pulumi.Input<String>? frequency;
  /// How frequently maintenance occurs. Currently can only be weekly.
  final pulumi.Input<int>? hourOfDay;

  /// Creates a new [DatabasePostgresqlV2Updates].
  /// [dayOfWeek] The numeric reference for the day of the week to perform maintenance. 1 is Monday, 2 is Tuesday, through to 7 which is Sunday.
  /// [duration] The maximum maintenance window time in hours.
  /// [frequency] How frequently maintenance occurs. Currently can only be weekly.
  /// [hourOfDay] How frequently maintenance occurs. Currently can only be weekly.
  DatabasePostgresqlV2Updates({
    this.dayOfWeek,
    this.duration,
    this.frequency,
    this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'duration': ?duration,
      'frequency': ?frequency,
      'hourOfDay': ?hourOfDay,
    };
  }

  factory DatabasePostgresqlV2Updates.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlV2Updates(
      dayOfWeek: map['dayOfWeek'] == null ? null : (map['dayOfWeek']! as int).input(),
      duration: map['duration'] == null ? null : (map['duration']! as int).input(),
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      hourOfDay: map['hourOfDay'] == null ? null : (map['hourOfDay']! as int).input(),
    );
  }
}

