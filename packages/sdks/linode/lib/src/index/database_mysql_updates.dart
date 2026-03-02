// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseMysqlUpdates {
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

  /// Creates a new [DatabaseMysqlUpdates].
  /// [dayOfWeek] The day to perform maintenance.
  /// [duration] The maximum maintenance window time in hours.
  /// [frequency] Whether maintenance occurs on a weekly or monthly basis.
  /// [hourOfDay] The hour to begin maintenance based in UTC time.
  /// [weekOfMonth] The week of the month to perform monthly frequency updates. Required for monthly frequency updates.
  DatabaseMysqlUpdates({
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

  factory DatabaseMysqlUpdates.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlUpdates(
      dayOfWeek: (map['dayOfWeek'] as String).input(),
      duration: (map['duration'] as int).input(),
      frequency: (map['frequency'] as String).input(),
      hourOfDay: (map['hourOfDay'] as int).input(),
      weekOfMonth: map['weekOfMonth'] == null ? null : (map['weekOfMonth'] as int).input(),
    );
  }
}

