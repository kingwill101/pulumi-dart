// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day.dart';

/// Daily retention format.
class DailyRetentionFormat {
  /// List of days of the month.
  final pulumi.Input<List<Day>>? daysOfTheMonth;

  /// Creates a new [DailyRetentionFormat].
  /// [daysOfTheMonth] List of days of the month.
  DailyRetentionFormat({
    this.daysOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheMonth': ?pulumi.Input.mapOptionalInputValue<List<Day>, List<Map<String, dynamic>>>(daysOfTheMonth, (value) => pulumi.Input.encodeList<Day, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DailyRetentionFormat.fromMap(Map<String, dynamic> map) {
    return DailyRetentionFormat(
      daysOfTheMonth: map['daysOfTheMonth'] == null ? null : (pulumi.Input.decodeList<Day>(map['daysOfTheMonth'], (value) => Day.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

