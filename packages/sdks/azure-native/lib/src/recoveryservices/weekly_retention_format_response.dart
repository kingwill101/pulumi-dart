// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly retention format.
class WeeklyRetentionFormatResponse {
  /// List of days of the week.
  final pulumi.Input<List<String>>? daysOfTheWeek;
  /// List of weeks of month.
  final pulumi.Input<List<String>>? weeksOfTheMonth;

  /// Creates a new [WeeklyRetentionFormatResponse].
  /// [daysOfTheWeek] List of days of the week.
  /// [weeksOfTheMonth] List of weeks of month.
  WeeklyRetentionFormatResponse({
    this.daysOfTheWeek,
    this.weeksOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?daysOfTheWeek,
      'weeksOfTheMonth': ?weeksOfTheMonth,
    };
  }

  factory WeeklyRetentionFormatResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionFormatResponse(
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : ((map['daysOfTheWeek']! as List).cast<String>()).input(),
      weeksOfTheMonth: map['weeksOfTheMonth'] == null ? null : ((map['weeksOfTheMonth']! as List).cast<String>()).input(),
    );
  }
}

