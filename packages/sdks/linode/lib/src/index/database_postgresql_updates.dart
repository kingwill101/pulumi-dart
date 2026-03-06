// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabasePostgresqlUpdates {
  /// The day to perform maintenance.
  final pulumi.Input<String> dayOfWeek;
  /// The maximum maintenance window time in hours.
  final pulumi.Input<int> duration;
  /// Whether maintenance occurs on a weekly or monthly basis.
  final pulumi.Input<String> frequency;
  /// The hour to begin maintenance based in UTC time.
  final pulumi.Input<int> hourOfDay;
  /// The week of the month to perform monthly frequency updates. Required for monthly frequency updates.
  final pulumi.Input<int>? weekOfMonth;

  /// Creates a new [DatabasePostgresqlUpdates].
  /// [dayOfWeek] The day to perform maintenance.
  /// [duration] The maximum maintenance window time in hours.
  /// [frequency] Whether maintenance occurs on a weekly or monthly basis.
  /// [hourOfDay] The hour to begin maintenance based in UTC time.
  /// [weekOfMonth] The week of the month to perform monthly frequency updates. Required for monthly frequency updates.
  const DatabasePostgresqlUpdates({
    required this.dayOfWeek,
    required this.duration,
    required this.frequency,
    required this.hourOfDay,
    this.weekOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'duration': duration,
      'frequency': frequency,
      'hourOfDay': hourOfDay,
      'weekOfMonth': ?weekOfMonth,
    };
  }

  factory DatabasePostgresqlUpdates.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlUpdates(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as int),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
      weekOfMonth: (() { final guardedValue = map['weekOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

