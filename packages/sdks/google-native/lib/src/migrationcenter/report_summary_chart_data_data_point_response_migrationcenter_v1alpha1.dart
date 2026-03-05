// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a single data point in the Chart.
class ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1 {
  /// The X-axis label for this data point.
  final pulumi.Input<String> label;
  /// The Y-axis value for this data point.
  final pulumi.Input<double> value;

  /// Creates a new [ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1].
  /// [label] The X-axis label for this data point.
  /// [value] The Y-axis value for this data point.
  ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryChartDataDataPointResponseMigrationcenterV1alpha1(
      label: pulumi.Input.fromValue(map['label'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

