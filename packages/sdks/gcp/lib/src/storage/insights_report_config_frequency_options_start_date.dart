// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsReportConfigFrequencyOptionsStartDate {
  /// The day of the month to start generating inventory reports.
  final pulumi.Input<int> day;
  /// The month to start generating inventory reports.
  final pulumi.Input<int> month;
  /// The year to start generating inventory reports
  final pulumi.Input<int> year;

  /// Creates a new [InsightsReportConfigFrequencyOptionsStartDate].
  /// [day] The day of the month to start generating inventory reports.
  /// [month] The month to start generating inventory reports.
  /// [year] The year to start generating inventory reports
  const InsightsReportConfigFrequencyOptionsStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory InsightsReportConfigFrequencyOptionsStartDate.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigFrequencyOptionsStartDate(
      day: pulumi.Input.fromValue((map['day'] as num).toInt()),
      month: pulumi.Input.fromValue((map['month'] as num).toInt()),
      year: pulumi.Input.fromValue((map['year'] as num).toInt()),
    );
  }
}
