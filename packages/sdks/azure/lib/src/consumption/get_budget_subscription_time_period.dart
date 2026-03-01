// ignore_for_file: unused_element, unnecessary_cast


class GetBudgetSubscriptionTimePeriod {
  /// The end date for the budget.
  final String endDate;
  /// The start date for the budget.
  final String startDate;

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
      endDate: map['endDate'] as String,
      startDate: map['startDate'] as String,
    );
  }
}

