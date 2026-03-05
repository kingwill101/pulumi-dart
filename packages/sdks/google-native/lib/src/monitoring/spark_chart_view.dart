// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_chart_view_spark_chart_type.dart';

/// A sparkChart is a small chart suitable for inclusion in a table-cell or inline in text. This message contains the configuration for a sparkChart to show up on a Scorecard, showing recent trends of the scorecard's timeseries.
class SparkChartView {
  /// The lower bound on data point frequency in the chart implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes it would not make sense to fetch and align data at one minute intervals. This field is optional and exists only as a hint.
  final pulumi.Input<String>? minAlignmentPeriod;
  /// The type of sparkchart to show in this chartView.
  final pulumi.Input<SparkChartViewSparkChartType> sparkChartType;

  /// Creates a new [SparkChartView].
  /// [minAlignmentPeriod] The lower bound on data point frequency in the chart implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes it would not make sense to fetch and align data at one minute intervals. This field is optional and exists only as a hint.
  /// [sparkChartType] The type of sparkchart to show in this chartView.
  SparkChartView({
    this.minAlignmentPeriod,
    required this.sparkChartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAlignmentPeriod': ?minAlignmentPeriod,
      'sparkChartType': pulumi.Input.mapInputValue<SparkChartViewSparkChartType, String>(sparkChartType, (value) => value.wireValue),
    };
  }

  factory SparkChartView.fromMap(Map<String, dynamic> map) {
    return SparkChartView(
      minAlignmentPeriod: (() { final guardedValue = map['minAlignmentPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkChartType: pulumi.Input.fromValue(SparkChartViewSparkChartType.fromValue(map['sparkChartType']! as String)),
    );
  }
}

