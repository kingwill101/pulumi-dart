// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetResourceGroupTimePeriod {
  /// The end date for the budget.
  final pulumi.Input<String> endDate;
  /// The start date for the budget.
  final pulumi.Input<String> startDate;

  /// Creates a new [GetBudgetResourceGroupTimePeriod].
  /// [endDate] The end date for the budget.
  /// [startDate] The start date for the budget.
  GetBudgetResourceGroupTimePeriod({
    required this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': endDate,
      'startDate': startDate,
    };
  }

  factory GetBudgetResourceGroupTimePeriod.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupTimePeriod(
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
    );
  }
}

