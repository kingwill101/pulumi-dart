// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig {
  /// Possible values are: `METRIC_DISPLAY_TREND_UNSPECIFIED`, `METRIC_DISPLAY_TREND_ABSOLUTE_VALUE`, `METRIC_DISPLAY_TREND_PERCENTAGE`, `METRIC_DISPLAY_TREND_ABSOLUTE_VALUE_AND_PERCENTAGE`.
  final pulumi.Input<String?>? metricDisplayTrend;
  /// Possible values are: `METRIC_FORMAT_UNSPECIFIED`, `METRIC_FORMAT_NUMBER`, `METRIC_FORMAT_PLAIN_TEXT`.
  final pulumi.Input<String?>? metricFormat;
  /// Possible values are: `METRIC_TREND_TYPE_UNSPECIFIED`, `METRIC_TREND_TYPE_REGULAR`, `METRIC_TREND_TYPE_INVERSE`.
  final pulumi.Input<String?>? metricTrendType;
  /// (Optional)
  final pulumi.Input<bool?>? showMetricTrend;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig].
  /// [metricDisplayTrend] Possible values are: `METRIC_DISPLAY_TREND_UNSPECIFIED`, `METRIC_DISPLAY_TREND_ABSOLUTE_VALUE`, `METRIC_DISPLAY_TREND_PERCENTAGE`, `METRIC_DISPLAY_TREND_ABSOLUTE_VALUE_AND_PERCENTAGE`.
  /// [metricFormat] Possible values are: `METRIC_FORMAT_UNSPECIFIED`, `METRIC_FORMAT_NUMBER`, `METRIC_FORMAT_PLAIN_TEXT`.
  /// [metricTrendType] Possible values are: `METRIC_TREND_TYPE_UNSPECIFIED`, `METRIC_TREND_TYPE_REGULAR`, `METRIC_TREND_TYPE_INVERSE`.
  /// [showMetricTrend] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig({
    this.metricDisplayTrend,
    this.metricFormat,
    this.metricTrendType,
    this.showMetricTrend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDisplayTrend': ?metricDisplayTrend,
      'metricFormat': ?metricFormat,
      'metricTrendType': ?metricTrendType,
      'showMetricTrend': ?showMetricTrend,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig(
      metricDisplayTrend: (() { final guardedValue = map['metricDisplayTrend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricFormat: (() { final guardedValue = map['metricFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricTrendType: (() { final guardedValue = map['metricTrendType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showMetricTrend: (() { final guardedValue = map['showMetricTrend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
