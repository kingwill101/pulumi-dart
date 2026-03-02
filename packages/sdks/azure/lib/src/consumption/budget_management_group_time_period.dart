// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetManagementGroupTimePeriod {
  /// The end date for the budget. If not set this will be 10 years after the start date.
  final pulumi.Input<String>? endDate;
  /// The start date for the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should be selected within the timegrain period. Changing this forces a new resource to be created.
  final pulumi.Input<String> startDate;

  /// Creates a new [BudgetManagementGroupTimePeriod].
  /// [endDate] The end date for the budget. If not set this will be 10 years after the start date.
  /// [startDate] The start date for the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should be selected within the timegrain period. Changing this forces a new resource to be created.
  BudgetManagementGroupTimePeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': startDate,
    };
  }

  factory BudgetManagementGroupTimePeriod.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupTimePeriod(
      endDate: map['endDate'] == null ? null : (map['endDate'] as String).input(),
      startDate: (map['startDate'] as String).input(),
    );
  }
}

