// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetSubscriptionTimePeriod {
  /// The end date for the budget.
  final pulumi.Input<String> endDate;
  /// The start date for the budget.
  final pulumi.Input<String> startDate;

  /// Creates a new [GetBudgetSubscriptionTimePeriod].
  /// [endDate] The end date for the budget.
  /// [startDate] The start date for the budget.
  GetBudgetSubscriptionTimePeriod({
    required this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': endDate,
      'startDate': startDate,
    };
  }

  factory GetBudgetSubscriptionTimePeriod.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionTimePeriod(
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
    );
  }
}

