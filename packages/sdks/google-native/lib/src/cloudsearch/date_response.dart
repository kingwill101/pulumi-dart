// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a whole calendar date, for example a date of birth. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date between the year 1 and 9999.
class DateResponse {
  /// Day of month. Must be from 1 to 31 and valid for the year and month.
  final pulumi.Input<int> day;
  /// Month of date. Must be from 1 to 12.
  final pulumi.Input<int> month;
  /// Year of date. Must be from 1 to 9999.
  final pulumi.Input<int> year;

  /// Creates a new [DateResponse].
  /// [day] Day of month. Must be from 1 to 31 and valid for the year and month.
  /// [month] Month of date. Must be from 1 to 12.
  /// [year] Year of date. Must be from 1 to 9999.
  const DateResponse({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory DateResponse.fromMap(Map<String, dynamic> map) {
    return DateResponse(
      day: pulumi.Input.fromValue(map['day'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}

