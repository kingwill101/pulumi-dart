// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date.dart';

/// All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
class GoogleCloudBillingBudgetsV1CustomPeriod {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  final pulumi.Input<GoogleTypeDate>? endDate;

  /// The start date must be after January 1, 2017.
  final pulumi.Input<GoogleTypeDate> startDate;

  /// Creates a new [GoogleCloudBillingBudgetsV1CustomPeriod].
  /// [endDate] Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.
  /// [startDate] The start date must be after January 1, 2017.
  GoogleCloudBillingBudgetsV1CustomPeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleTypeDate,
            Map<String, dynamic>
          >(endDate, (value) => value.toMap()),
      'startDate':
          pulumi.Input.mapInputValue<GoogleTypeDate, Map<String, dynamic>>(
            startDate,
            (value) => value.toMap(),
          ),
    };
  }

  factory GoogleCloudBillingBudgetsV1CustomPeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBillingBudgetsV1CustomPeriod(
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleTypeDate.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      startDate: pulumi.Input.fromValue(
        GoogleTypeDate.fromMap(
          (map['startDate']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
