// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetBudgetFilterCustomPeriodStartDate {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month.
  final pulumi.Input<int> day;
  /// Month of a year. Must be from 1 to 12.
  final pulumi.Input<int> month;
  /// Year of the date. Must be from 1 to 9999.
  final pulumi.Input<int> year;

  /// Creates a new [BudgetBudgetFilterCustomPeriodStartDate].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month.
  /// [month] Month of a year. Must be from 1 to 12.
  /// [year] Year of the date. Must be from 1 to 9999.
  const BudgetBudgetFilterCustomPeriodStartDate({
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

  factory BudgetBudgetFilterCustomPeriodStartDate.fromMap(Map<String, dynamic> map) {
    return BudgetBudgetFilterCustomPeriodStartDate(
      day: pulumi.Input.fromValue(map['day'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}

