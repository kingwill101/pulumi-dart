// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
class GoogleTypeDateResponse {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
  final pulumi.Input<int> day;
  /// Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
  final pulumi.Input<int> month;
  /// Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
  final pulumi.Input<int> year;

  /// Creates a new [GoogleTypeDateResponse].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
  /// [month] Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
  /// [year] Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
  const GoogleTypeDateResponse({
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

  factory GoogleTypeDateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleTypeDateResponse(
      day: pulumi.Input.fromValue(map['day'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}

