// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_response.dart';

/// Daily retention format.
class DailyRetentionFormatResponse {
  /// List of days of the month.
  final pulumi.Input<List<DayResponse>>? daysOfTheMonth;

  /// Creates a new [DailyRetentionFormatResponse].
  /// [daysOfTheMonth] List of days of the month.
  const DailyRetentionFormatResponse({
    this.daysOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheMonth': ?pulumi.Input.mapOptionalInputValue<List<DayResponse>, List<Map<String, dynamic>>>(daysOfTheMonth, (value) => pulumi.Input.encodeList<DayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DailyRetentionFormatResponse.fromMap(Map<String, dynamic> map) {
    return DailyRetentionFormatResponse(
      daysOfTheMonth: (() { final guardedValue = map['daysOfTheMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DayResponse>(guardedValue, (value) => DayResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
