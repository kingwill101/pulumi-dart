// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlUpdate {
  final pulumi.Input<String> dayOfWeek;
  final pulumi.Input<int> duration;
  final pulumi.Input<String> frequency;
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> weekOfMonth;

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
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as int),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
      weekOfMonth: pulumi.Input.fromValue(map['weekOfMonth'] as int),
    );
  }
}
