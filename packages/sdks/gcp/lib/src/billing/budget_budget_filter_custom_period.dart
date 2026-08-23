// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_budget_filter_custom_period_end_date.dart';
import 'budget_budget_filter_custom_period_start_date.dart';

class BudgetBudgetFilterCustomPeriod {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed.
  /// If unset, specifies to track all usage incurred since the startDate.
  /// Structure is documented below.
  final pulumi.Input<BudgetBudgetFilterCustomPeriodEndDate>? endDate;
  /// A start date is required. The start date must be after January 1, 2017.
  /// Structure is documented below.
  final pulumi.Input<BudgetBudgetFilterCustomPeriodStartDate> startDate;

  /// Creates a new [BudgetBudgetFilterCustomPeriod].
  /// [endDate] Optional. The end date of the time period. Budgets with elapsed end date won't be processed.
  /// [startDate] A start date is required. The start date must be after January 1, 2017.
  const BudgetBudgetFilterCustomPeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?pulumi.Input.mapOptionalInputValue<BudgetBudgetFilterCustomPeriodEndDate, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<BudgetBudgetFilterCustomPeriodStartDate, Map<String, dynamic>>(startDate, (value) => value.toMap()),
    };
  }

  factory BudgetBudgetFilterCustomPeriod.fromMap(Map<String, dynamic> map) {
    return BudgetBudgetFilterCustomPeriod(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetBudgetFilterCustomPeriodEndDate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startDate: pulumi.Input.fromValue(BudgetBudgetFilterCustomPeriodStartDate.fromMap((map['startDate']! as Map).cast<String, dynamic>())),
    );
  }
}
