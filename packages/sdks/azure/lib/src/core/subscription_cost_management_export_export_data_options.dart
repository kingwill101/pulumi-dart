// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCostManagementExportExportDataOptions {
  /// The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: `WeekToDate`, `MonthToDate`, `BillingMonthToDate`, `TheLast7Days`, `TheLastMonth`, `TheLastBillingMonth`, `Custom`.
  final pulumi.Input<String> timeFrame;
  /// The type of the query. Possible values are `ActualCost`, `AmortizedCost` and `Usage`.
  final pulumi.Input<String> type;

  /// Creates a new [SubscriptionCostManagementExportExportDataOptions].
  /// [timeFrame] The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: `WeekToDate`, `MonthToDate`, `BillingMonthToDate`, `TheLast7Days`, `TheLastMonth`, `TheLastBillingMonth`, `Custom`.
  /// [type] The type of the query. Possible values are `ActualCost`, `AmortizedCost` and `Usage`.
  SubscriptionCostManagementExportExportDataOptions({
    required this.timeFrame,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeFrame': timeFrame,
      'type': type,
    };
  }

  factory SubscriptionCostManagementExportExportDataOptions.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementExportExportDataOptions(
      timeFrame: pulumi.Input.fromValue(map['timeFrame'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

