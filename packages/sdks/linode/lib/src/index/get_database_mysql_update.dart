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
      dayOfWeek: (map['dayOfWeek'] as String).input(),
      duration: (map['duration'] as int).input(),
      frequency: (map['frequency'] as String).input(),
      hourOfDay: (map['hourOfDay'] as int).input(),
      weekOfMonth: (map['weekOfMonth'] as int).input(),
    );
  }
}

