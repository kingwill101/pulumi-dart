// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_report_config_frequency_options_end_date.dart';
import 'insights_report_config_frequency_options_start_date.dart';

class InsightsReportConfigFrequencyOptions {
  /// The date to stop generating inventory reports. For example, {"day": 15, "month": 9, "year": 2022}.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigFrequencyOptionsEndDate> endDate;

  /// The frequency in which inventory reports are generated. Values are DAILY or WEEKLY.
  /// Possible values are: `DAILY`, `WEEKLY`.
  final pulumi.Input<String> frequency;

  /// The date to start generating inventory reports. For example, {"day": 15, "month": 8, "year": 2022}.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigFrequencyOptionsStartDate> startDate;

  /// Creates a new [InsightsReportConfigFrequencyOptions].
  /// [endDate] The date to stop generating inventory reports. For example, {"day": 15, "month": 9, "year": 2022}.
  /// [frequency] The frequency in which inventory reports are generated. Values are DAILY or WEEKLY.
  /// [startDate] The date to start generating inventory reports. For example, {"day": 15, "month": 8, "year": 2022}.
  InsightsReportConfigFrequencyOptions({
    required this.endDate,
    required this.frequency,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate':
          pulumi.Input.mapInputValue<
            InsightsReportConfigFrequencyOptionsEndDate,
            Map<String, dynamic>
          >(endDate, (value) => value.toMap()),
      'frequency': frequency,
      'startDate':
          pulumi.Input.mapInputValue<
            InsightsReportConfigFrequencyOptionsStartDate,
            Map<String, dynamic>
          >(startDate, (value) => value.toMap()),
    };
  }

  factory InsightsReportConfigFrequencyOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsReportConfigFrequencyOptions(
      endDate: pulumi.Input.fromValue(
        InsightsReportConfigFrequencyOptionsEndDate.fromMap(
          (map['endDate']! as Map).cast<String, dynamic>(),
        ),
      ),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      startDate: pulumi.Input.fromValue(
        InsightsReportConfigFrequencyOptionsStartDate.fromMap(
          (map['startDate']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
