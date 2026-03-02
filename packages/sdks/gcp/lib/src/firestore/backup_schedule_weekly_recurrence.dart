// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupScheduleWeeklyRecurrence {
  /// The day of week to run.
  /// Possible values are: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String>? day;

  /// Creates a new [BackupScheduleWeeklyRecurrence].
  /// [day] The day of week to run.
  BackupScheduleWeeklyRecurrence({
    this.day,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
    };
  }

  factory BackupScheduleWeeklyRecurrence.fromMap(Map<String, dynamic> map) {
    return BackupScheduleWeeklyRecurrence(
      day: map['day'] == null ? null : (map['day'] as String).input(),
    );
  }
}

