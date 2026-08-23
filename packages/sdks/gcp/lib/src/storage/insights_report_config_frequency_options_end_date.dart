// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsReportConfigFrequencyOptionsEndDate {
  /// The day of the month to stop generating inventory reports.
  final pulumi.Input<int> day;
  /// The month to stop generating inventory reports.
  final pulumi.Input<int> month;
  /// The year to stop generating inventory reports
  final pulumi.Input<int> year;

  /// Creates a new [InsightsReportConfigFrequencyOptionsEndDate].
  /// [day] The day of the month to stop generating inventory reports.
  /// [month] The month to stop generating inventory reports.
  /// [year] The year to stop generating inventory reports
  const InsightsReportConfigFrequencyOptionsEndDate({
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

  factory InsightsReportConfigFrequencyOptionsEndDate.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigFrequencyOptionsEndDate(
      day: pulumi.Input.fromValue(map['day'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}
