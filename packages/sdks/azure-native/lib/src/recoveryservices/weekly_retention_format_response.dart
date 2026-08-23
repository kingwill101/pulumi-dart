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
  const WeeklyRetentionFormatResponse({
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
      daysOfTheWeek: (() { final guardedValue = map['daysOfTheWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      weeksOfTheMonth: (() { final guardedValue = map['weeksOfTheMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
