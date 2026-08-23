// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day.dart';

/// Daily retention format.
class DailyRetentionFormat {
  /// List of days of the month.
  final pulumi.Input<List<Day>>? daysOfTheMonth;

  /// Creates a new [DailyRetentionFormat].
  /// [daysOfTheMonth] List of days of the month.
  const DailyRetentionFormat({
    this.daysOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheMonth': ?pulumi.Input.mapOptionalInputValue<List<Day>, List<Map<String, dynamic>>>(daysOfTheMonth, (value) => pulumi.Input.encodeList<Day, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DailyRetentionFormat.fromMap(Map<String, dynamic> map) {
    return DailyRetentionFormat(
      daysOfTheMonth: (() { final guardedValue = map['daysOfTheMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Day>(guardedValue, (value) => Day.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
