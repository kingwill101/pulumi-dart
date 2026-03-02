// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate {
  /// Day of a month.
  final pulumi.Input<int>? day;
  /// Month of a year.
  final pulumi.Input<int>? month;
  /// Year of the date.
  final pulumi.Input<int>? year;

  /// Creates a new [BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate].
  /// [day] Day of a month.
  /// [month] Month of a year.
  /// [year] Year of the date.
  BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate({
    this.day,
    this.month,
    this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'month': ?month,
      'year': ?year,
    };
  }

  factory BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate(
      day: map['day'] == null ? null : (map['day']! as int).input(),
      month: map['month'] == null ? null : (map['month']! as int).input(),
      year: map['year'] == null ? null : (map['year']! as int).input(),
    );
  }
}

