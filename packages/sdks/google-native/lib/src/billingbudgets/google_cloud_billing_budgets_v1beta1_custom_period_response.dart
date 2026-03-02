// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_response_billingbudgets_v1beta1.dart';

/// All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
class GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  final pulumi.Input<GoogleTypeDateResponseBillingbudgetsV1beta1> endDate;
  /// The start date must be after January 1, 2017.
  final pulumi.Input<GoogleTypeDateResponseBillingbudgetsV1beta1> startDate;

  /// Creates a new [GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse].
  /// [endDate] Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  /// [startDate] The start date must be after January 1, 2017.
  GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse({
    required this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': pulumi.Input.mapInputValue<GoogleTypeDateResponseBillingbudgetsV1beta1, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<GoogleTypeDateResponseBillingbudgetsV1beta1, Map<String, dynamic>>(startDate, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse(
      endDate: (GoogleTypeDateResponseBillingbudgetsV1beta1.fromMap((map['endDate'] as Map).cast<String, dynamic>())).input(),
      startDate: (GoogleTypeDateResponseBillingbudgetsV1beta1.fromMap((map['startDate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

