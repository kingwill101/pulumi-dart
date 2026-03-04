/// Optional. Store rendering strategy
enum TimeSeriesTableMetricVisualization {
  metricVisualizationUnspecified("METRIC_VISUALIZATION_UNSPECIFIED"),
  number("NUMBER"),
  bar("BAR");

  const TimeSeriesTableMetricVisualization(this.wireValue);
  final String wireValue;

  static TimeSeriesTableMetricVisualization fromValue(String value) {
    for (final item in TimeSeriesTableMetricVisualization.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TimeSeriesTableMetricVisualization value: $value',
    );
  }
}
