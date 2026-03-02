// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_response.dart';

/// All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
class GoogleCloudBillingBudgetsV1CustomPeriodResponse {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  final pulumi.Input<GoogleTypeDateResponse> endDate;
  /// The start date must be after January 1, 2017.
  final pulumi.Input<GoogleTypeDateResponse> startDate;

  /// Creates a new [GoogleCloudBillingBudgetsV1CustomPeriodResponse].
  /// [endDate] Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  /// [startDate] The start date must be after January 1, 2017.
  GoogleCloudBillingBudgetsV1CustomPeriodResponse({
    required this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': pulumi.Input.mapInputValue<GoogleTypeDateResponse, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<GoogleTypeDateResponse, Map<String, dynamic>>(startDate, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBillingBudgetsV1CustomPeriodResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1CustomPeriodResponse(
      endDate: (GoogleTypeDateResponse.fromMap((map['endDate'] as Map).cast<String, dynamic>())).input(),
      startDate: (GoogleTypeDateResponse.fromMap((map['startDate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

