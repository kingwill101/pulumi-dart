// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabasePostgresqlUpdate {
  final pulumi.Input<String> dayOfWeek;
  final pulumi.Input<int> duration;
  final pulumi.Input<String> frequency;
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> weekOfMonth;

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
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as int),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
      weekOfMonth: pulumi.Input.fromValue(map['weekOfMonth'] as int),
    );
  }
}
