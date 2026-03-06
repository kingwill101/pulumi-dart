// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDenyMaintenancePeriodEndDate {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
  /// to specify a year by itself or a year and month where the day isn't significant.
  final pulumi.Input<int>? day;
  /// Month of a year. Must be from 1 to 12, or 0 to specify a year without a
  /// month and day.
  final pulumi.Input<int>? month;
  /// Year of the date. Must be from 1 to 9999, or 0 to specify a date without
  /// a year.
  final pulumi.Input<int>? year;

  /// Creates a new [InstanceDenyMaintenancePeriodEndDate].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
  /// [month] Month of a year. Must be from 1 to 12, or 0 to specify a year without a
  /// [year] Year of the date. Must be from 1 to 9999, or 0 to specify a date without
  const InstanceDenyMaintenancePeriodEndDate({
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

  factory InstanceDenyMaintenancePeriodEndDate.fromMap(Map<String, dynamic> map) {
    return InstanceDenyMaintenancePeriodEndDate(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      month: (() { final guardedValue = map['month']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      year: (() { final guardedValue = map['year']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

