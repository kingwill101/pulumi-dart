import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Store rendering strategy
enum TimeSeriesTableMetricVisualization implements pulumi.PulumiEnum<String> {
  metricVisualizationUnspecified("METRIC_VISUALIZATION_UNSPECIFIED"),
  number("NUMBER"),
  bar("BAR");

  const TimeSeriesTableMetricVisualization(this.wireValue);
  @override
  final String wireValue;

  static TimeSeriesTableMetricVisualization fromValue(String value) {
    for (final item in TimeSeriesTableMetricVisualization.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSeriesTableMetricVisualization value: $value');
  }
}
