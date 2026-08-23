// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
  /// to specify a year by itself or a year and month where the day isn't
  /// significant.
  final pulumi.Input<int> day;
  /// Month of a year. Must be from 1 to 12, or 0 to specify a year without a
  /// month and day.
  final pulumi.Input<int> month;
  /// Year of the date. Must be from 1 to 9999, or 0 to specify a date without
  /// a year.
  final pulumi.Input<int> year;

  /// Creates a new [GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
  /// [month] Month of a year. Must be from 1 to 12, or 0 to specify a year without a
  /// [year] Year of the date. Must be from 1 to 9999, or 0 to specify a date without
  const GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate({
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

  factory GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate(
      day: pulumi.Input.fromValue(map['day'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}
